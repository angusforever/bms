<?php
/**
 * Created by PhpStorm.
 * User: wangshuo
 * Date: 2017/3/29
 * Time: 下午10:29
 */
namespace Admin\Controller;
class HistoryController extends BaseController{
    public function index(){
        $this->display();
    }

    public function getData(){
        $queryparam = json_decode(file_get_contents("php://input"), true);
        $Model = M();
        $role = session('emp_role');
        if($role == '管理员'){
            $sql_select = "
select br.*,bk.*,emp.*,substring(br.br_brtime, 1, 10) br_brtime1,substring(br.br_rttime, 1, 10) br_rttime1
from bkmg_borrow br
left join bkmg_book bk on br.br_bkid=bk.bk_atpid
left join bkmg_employee emp on br.br_empid=emp.emp_atpid
 where br.br_atpstatus is null";
            $sql_count = "
select count(1) c
from bkmg_borrow br
left join bkmg_book bk on br.br_bkid=bk.bk_atpid
left join bkmg_employee emp on br.br_empid=emp.emp_atpid
 where br.br_atpstatus is null";

            if (null != $queryparam['search']) {
                $searchcontent = trim($queryparam['search']);
                $sql_select = $this->buildSql($sql_select, " bk.bk_name like '%" . $searchcontent . "%'");
                $sql_count = $this->buildSql($sql_count, " bk.bk_name like '%" . $searchcontent . "%'");
            }

            if (null != $queryparam['sort']) {
                $sql_select = $sql_select . " order by " . $queryparam['sort'] . ' ' . $queryparam['sortOrder'] . ' ';
            } else {
                $sql_select = $sql_select . " order by br.br_rttime asc ";
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
        } else if($role == '普通用户') {
            $emp = session('emp_atpid');
            $sql_select = "
select br.*,bk.*,emp.*,substring(br.br_brtime, 1, 10) br_brtime1,substring(br.br_rttime, 1, 10) br_rttime1
from bkmg_borrow br
left join bkmg_book bk on br.br_bkid=bk.bk_atpid
left join bkmg_employee emp on br.br_empid=emp.emp_atpid
 where br.br_atpstatus is null and emp.emp_atpid='$emp'";
            $sql_count = "
select count(1) c
from bkmg_borrow br
left join bkmg_book bk on br.br_bkid=bk.bk_atpid
left join bkmg_employee emp on br.br_empid=emp.emp_atpid
 where br.br_atpstatus is null and emp.emp_atpid='$emp'";

            if (null != $queryparam['search']) {
                $searchcontent = trim($queryparam['search']);
                $sql_select = $this->buildSql($sql_select, " bk.bk_name like '%" . $searchcontent . "%'");
                $sql_count = $this->buildSql($sql_count, " bk.bk_name like '%" . $searchcontent . "%'");
            }

            if (null != $queryparam['sort']) {
                $sql_select = $sql_select . " order by " . $queryparam['sort'] . ' ' . $queryparam['sortOrder'] . ' ';
            } else {
                $sql_select = $sql_select . " order by br.br_rttime asc ";
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
    }

    public function addComment(){
        $id = I('param.id');
        $br = M('borrow')->where(array('br_atpid'=>$id))->find();
//        $cm = M('comment')->where(array('cm_bkid'=>$br['br_bkid'],'cm_empid'=>$br['br_empid']))->find();
        $cm = M('comment')->where(array('cm_brid'=>$id))->find();
        if($cm)
            $data['cm_content'] = $cm['cm_content'];
        $data['br_atpid'] = $id;
        $data['br_empid'] = $br['br_empid'];
        $data['br_bkid'] = $br['br_bkid'];
        $this->assign('data', $data);
        $this->display('comment');
    }

    public function saveComment(){
        $p = I('post.');
        $Model = M('comment');
        $data['cm_atpid'] = $this->makeGuid();
        $data['cm_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
        $data['cm_atpcreateuser'] = session('emp_atpid');;
        $data['cm_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
        $data['cm_atplastmodifyuser'] = session('emp_atpid');
        $data['cm_brid'] = $p['br_atpid'];
        $data['cm_content'] = $p['cm_content'];
        $data['cm_bkid'] = $p['br_bkid'];
        $data['cm_empid'] = $p['br_empid'];
        $res = $Model->add($data);
        if($res){
            $this->ajaxReturn('0');
        } else {
            $this->ajaxReturn('-1');
        }
    }
}