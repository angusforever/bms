<?php
/**
 * Created by PhpStorm.
 * User: wangshuo
 * Date: 2017/3/29
 * Time: 下午11:04
 */
namespace Admin\Controller;
class SearchController extends BaseController{
    public function index(){
        $m['tp_atpstatus'] = array('EXP', 'is null');
//        $m['tp_pid'] = array('EXP', 'is not null');
        $types = M('type')->where($m)->select();
        $this->assign('types', $types);
        $this->display();
    }

    public function getData(){
        $queryparam = json_decode(file_get_contents("php://input"), true);
        $Model = M();
        $sql_select = "select a.bk_code,a.bk_name,a.bk_author,a.bk_publish,b.br_person,c.tp_name,d.bk_totalnum,e.bk_brnum,d.bk_totalnum-e.bk_brnum bk_curnum
FROM(
select bk.bk_name,
bk.bk_author,
bk.bk_publish,
GROUP_CONCAT(distinct bk.bk_code order by bk.bk_code) bk_code
from bkmg_book bk
where bk.bk_atpstatus is null
group by bk.bk_name,bk.bk_author,bk.bk_publish) a
left JOIN
(
select bkmg_book.bk_name,
GROUP_CONCAT(distinct bkmg_employee.emp_name order by bkmg_employee.emp_name) br_person
from bkmg_borrow
inner join bkmg_book on bkmg_book.bk_atpid=bkmg_borrow.br_bkid
inner join bkmg_employee on bkmg_employee.emp_atpid=bkmg_borrow.br_empid
where bkmg_borrow.br_rttime is null
group by bkmg_book.bk_name
) b on a.bk_name = b.bk_name
left JOIN
(
select bkmg_book.bk_name,
GROUP_CONCAT(distinct bkmg_type.tp_name order by bkmg_type.tp_name) tp_name
from bkmg_book
inner join bkmg_bktype on bkmg_bktype.bktp_bkid=bkmg_book.bk_atpid
inner join bkmg_type on bkmg_bktype.bktp_typeid=bkmg_type.tp_atpid
group by bkmg_book.bk_name
) c on a.bk_name = c.bk_name
left JOIN
(
select bkmg_book.bk_name,count(*) bk_totalnum
from bkmg_book
where bkmg_book.bk_atpstatus is null
group by bkmg_book.bk_name
) d on a.bk_name = d.bk_name
left JOIN
(
select bkmg_book.bk_name,
count(*) bk_brnum
from bkmg_book
inner join bkmg_borrow on bkmg_book.bk_atpid=bkmg_borrow.br_bkid
where bkmg_borrow.br_rttime is null
group by bkmg_book.bk_name
) e on a.bk_name = e.bk_name




";
        $sql_count = "select count(*) c
FROM(
select bk.bk_name,
bk.bk_author,
bk.bk_publish,
GROUP_CONCAT(distinct bk.bk_code order by bk.bk_code) bk_code
from bkmg_book bk
where bk.bk_atpstatus is null
group by bk.bk_name,bk.bk_author,bk.bk_publish) a
left JOIN
(
select bkmg_book.bk_name,
GROUP_CONCAT(distinct bkmg_employee.emp_name order by bkmg_employee.emp_name) br_person
from bkmg_borrow
inner join bkmg_book on bkmg_book.bk_atpid=bkmg_borrow.br_bkid
inner join bkmg_employee on bkmg_employee.emp_atpid=bkmg_borrow.br_empid
where bkmg_borrow.br_rttime is null
group by bkmg_book.bk_name
) b on a.bk_name = b.bk_name
left JOIN
(
select bkmg_book.bk_name,
GROUP_CONCAT(distinct bkmg_type.tp_name order by bkmg_type.tp_name) tp_name
from bkmg_book
inner join bkmg_bktype on bkmg_bktype.bktp_bkid=bkmg_book.bk_atpid
inner join bkmg_type on bkmg_bktype.bktp_typeid=bkmg_type.tp_atpid
group by bkmg_book.bk_name
) c on a.bk_name = c.bk_name
left JOIN
(
select bkmg_book.bk_name,count(*) bk_totalnum
from bkmg_book
where bkmg_book.bk_atpstatus is null
group by bkmg_book.bk_name
) d on a.bk_name = d.bk_name
left JOIN
(
select bkmg_book.bk_name,
count(*) bk_brnum
from bkmg_book
inner join bkmg_borrow on bkmg_book.bk_atpid=bkmg_borrow.br_bkid
where bkmg_borrow.br_rttime is null
group by bkmg_book.bk_name
) e on a.bk_name = e.bk_name


";

        if (null != $queryparam['search']) {
            $searchcontent = trim($queryparam['search']);
            $sql_select .= " and (bk_code like '%$searchcontent%' or bk_name like '%$searchcontent%' or bk_author like '%$searchcontent%' or bk_publish like '%$searchcontent%')";
            $sql_count .= " and (bk_code like '%$searchcontent%' or bk_name like '%$searchcontent%' or bk_author like '%$searchcontent%' or bk_publish like '%$searchcontent%')";
        }
        if(null != $queryparam['types'] && $queryparam['types'] != ''){
            $sql_select .= " and tp_name in".$queryparam['types'];
            $sql_count .= " and tp_name in".$queryparam['types'];
        }
        if (null != $queryparam['sort']) {
            $sql_select = $sql_select . " order by " . $queryparam['sort'] . ' ' . $queryparam['sortOrder'] . ' ';
        } else {
            $sql_select = $sql_select . " order by bk_code asc ";
        }
        if (null != $queryparam['limit']) {
            if ('0' == $queryparam['offset']) {
                $sql_select = $sql_select . " limit " . '0' . ',' . $queryparam['limit'] . ' ';
            } else {
                $sql_select = $sql_select . " limit " . $queryparam['offset'] . ',' . $queryparam['limit'] . ' ';
            }
        }
        $Result = $Model->query($sql_select);
        $Count = $Model->query($sql_count);
        echo json_encode(array('total' => $Count[0]['c'], 'rows' => $Result));
    }

    public function lookComment(){
        $bookName = I('param.name');
        $cms = M('comment cm')->join('bkmg_employee emp on cm.cm_empid=emp.emp_atpid')->join('bkmg_book bk on cm.cm_bkid=bk.bk_atpid')->field('cm.*, emp.*, bk.*')->where(array('bk_name'=>$bookName))->order('cm_atplastmodifydatetime desc')->select();
        $this->assign('comments', $cms);
        $this->display('comment');
    }
}