<?php
/**
 * Created by PhpStorm.
 * User: wangshuo
 * Date: 2017/3/29
 * Time: 下午10:32
 */
namespace Admin\Controller;
class BookController extends BaseController{
    public function index(){
        $this->display();
    }

    public function add()
    {
        $sql = "select tp_atpid,tp_name from bkmg_type where tp_atpstatus is null ";
        $types = M()->query($sql);
        $this->assign('types', $types);
        $this->display();
    }

    public function edit()
    {
        $id = $_GET['id'];
        if ($id) {
            $Model = M("book");
            $data = $Model->where("bk_atpid='%s'", array($id))->find();
            $sql = "select tp_atpid,tp_name,bt.bktp_atpid has from bkmg_type t left join bkmg_bktype bt on t.tp_atpid=bt.bktp_typeid and bktp_bkid='$id' where tp_atpstatus is null ";
            $types = M()->query($sql);
            $this->assign('types', $types);
            if ($data) {
                $this->assign('data', $data);
            }
        }
        $this->display();
    }

    public function submitAdd()
    {
        $p = I('post.');
        $Model = M('book');
        $Model->startTrans();
        try{
            $num = $p['bk_totalnum'];
            for($i = 0; $i < $num; $i++){
                $d['bk_atpid'] = $this->makeGuid();
                $d['bk_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
                $d['bk_atpcreateuser'] = session('emp_atpid');;
                $d['bk_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                $d['bk_atplastmodifyuser'] = session('emp_atpid');;
                $d['bk_code'] = $this->getNextCode();
                $d['bk_name'] = $p['bk_name'];
                $d['bk_author'] = $p['bk_author'];
                $d['bk_publish'] = $p['bk_publish'];
                $d['bk_position'] = $p['bk_position'];
                $d['bk_totalnum'] = 1;
                $d['bk_curnum'] = 1;
                $res = $Model->add($d);
                if($res) {
                    M('bktype')->where("bktp_bkid='%s'", array($d['bk_atpid']))->delete();
                    $types = $p['bk_types'];
                    foreach ($types as $type) {
                        $d['bktp_atpid'] = $this->makeGuid();
                        $d['bktp_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
                        $d['bktp_atpcreateuser'] = session('emp_atpid');;
                        $d['bktp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                        $d['bktp_atplastmodifyuser'] = session('emp_atpid');;
                        $d['bktp_bkid'] = $d['bk_atpid'];
                        $d['bktp_typeid'] = $type;
                        $res = M('bktype')->add($d);
                        if (!$res) {
                            $Model->rollback();
                            $this->ajaxReturn('-2');
                        }
                    }
                } else {
                    $Model->rollback();
                    $this->ajaxReturn('-3');
                }
            }
            $Model->commit();
            $this->ajaxReturn('0');
        } catch(\Exception $e) {
            $Model->rollback();
            $this->ajaxReturn('-1');
        }
    }

    public function submitEdit()
    {
        $p = I('post.');
        $Model = M('book');
        $Model->startTrans();
        try{
            $d['bk_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
            $d['bk_atplastmodifyuser'] = session('emp_atpid');;
            $d['bk_name'] = $p['bk_name'];
            $d['bk_author'] = $p['bk_author'];
            $d['bk_publish'] = $p['bk_publish'];
            $d['bk_position'] = $p['bk_position'];
            $res = $Model->where("bk_atpid='%s'", array($p['bk_atpid']))->save($d);
            if($res) {
                M('bktype')->where("bktp_bkid='%s'", array($p['bk_atpid']))->delete();
                $types = $p['bk_types'];
                foreach ($types as $type) {
                    $d['bktp_atpid'] = $this->makeGuid();
                    $d['bktp_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
                    $d['bktp_atpcreateuser'] = session('emp_atpid');;
                    $d['bktp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                    $d['bktp_atplastmodifyuser'] = session('emp_atpid');;
                    $d['bktp_bkid'] = $p['bk_atpid'];
                    $d['bktp_typeid'] = $type;
                    $res = M('bktype')->add($d);
                    if (!$res) {
                        $Model->rollback();
                        $this->ajaxReturn('-2');
                    }
                }
            } else {
                $Model->rollback();
                $this->ajaxReturn('-3');
            }
            $Model->commit();
            $this->ajaxReturn('0');
        } catch(\Exception $e){
            $Model->rollback();
            $this->ajaxReturn('-1');
        }
    }

    public function submit()
    {
        $p = I('post.');
        $Model = M('book');
        $Model->startTrans();
        try {
//            $data = $Model->create();
            if (null == $p['bk_atpid']) {
                $d['bk_atpid'] = $this->makeGuid();
                $d['bk_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
                $d['bk_atpcreateuser'] = session('emp_atpid');;
                $d['bk_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                $d['bk_atplastmodifyuser'] = session('emp_atpid');;
                $d['bk_code'] = $p['bk_code'];
                $d['bk_name'] = $p['bk_name'];
                $d['bk_author'] = $p['bk_author'];
                $d['bk_publish'] = $p['bk_publish'];
                $d['bk_position'] = $p['bk_position'];
                $d['bk_totalnum'] = $p['bk_totalnum'];
                $d['bk_curnum'] = $d['bk_totalnum'];
                $res1 = $Model->add($d);
                M('bktype')->where("bktp_bkid='%s'", array($d['bk_atpid']))->delete();
                $types = $p['bk_types'];
                foreach($types as $type) {
                    $d['bktp_atpid'] = $this->makeGuid();
                    $d['bktp_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
                    $d['bktp_atpcreateuser'] = session('emp_atpid');;
                    $d['bktp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                    $d['bktp_atplastmodifyuser'] = session('emp_atpid');;
                    $d['bktp_bkid'] = $d['bk_atpid'];
                    $d['bktp_typeid'] = $type;
                    $res = M('bktype')->add($d);
                    if(!$res){
                        $Model->rollback();
                        $this->ajaxReturn('-1');
                    }
                }
            } else {
                $r = $Model->where("bk_atpid='%s'", array($p['bk_atpid']))->find();
                $d['bk_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                $d['bk_atplastmodifyuser'] = session('emp_atpid');;
                $d['bk_code'] = $p['bk_code'];
                $d['bk_name'] = $p['bk_name'];
                $d['bk_author'] = $p['bk_author'];
                $d['bk_publish'] = $p['bk_publish'];
                $d['bk_position'] = $p['bk_position'];
                $d['bk_totalnum'] = $p['bk_totalnum'];
                if($r['bk_totalnum'] == $r['bk_curnum']){
                    $d['bk_curnum'] = $d['bk_totalnum'];
                }
                $res1 = $Model->where("bk_atpid='%s'", array($p['bk_atpid']))->save($d);
                M('bktype')->where("bktp_bkid='%s'", array($p['bk_atpid']))->delete();
                $types = $p['bk_types'];
                foreach($types as $type) {
                    $d['bktp_atpid'] = $this->makeGuid();
                    $d['bktp_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
                    $d['bktp_atpcreateuser'] = session('emp_atpid');;
                    $d['bktp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                    $d['bktp_atplastmodifyuser'] = session('emp_atpid');;
                    $d['bktp_bkid'] = $p['bk_atpid'];
                    $d['bktp_typeid'] = $type;
                    $res = M('bktype')->add($d);
                    if(!$res){
                        $Model->rollback();
                        $this->ajaxReturn('-1');
                    }
                }
            }

            if($res1){
                $Model->commit();
                $this->ajaxReturn('0');
            } else {
                $Model->rollback();
                $this->ajaxReturn('-2');
            }

        } catch(\Exception $e) {
            $Model->rollback();
            $this->ajaxReturn('-3');
        }
    }

    public function del()
    {
        $Model = M("book");
        $Model->startTrans();
        try {
            $ids = $_POST['ids'];
            $array = explode(',', $ids);
            if ($array && count($array) > 0) {
                foreach ($array as $id) {
                    $res1 = M('bktype')->where("bktp_bkid='%s'", array($id))->delete();
                    $data = $Model->where("bk_atpid='%s'", array($id))->find();
                    if($data['bk_totalnum'] > $data['bk_curnum']){
                        $Model->rollback();
                        $this->ajaxReturn('-1');
                    }
                    $data['bk_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                    $data['bk_atplastmodifyuser'] = session('emp_atpid');;
                    $data['bk_atpstatus'] = 'DEL';
                    $res2 = $Model->where("bk_atpid='%s'", $id)->save($data);
                }
                if($res2){
                    $Model->commit();
                    $this->ajaxReturn('0');
                } else {
                    $Model->rollback();
                    $this->ajaxReturn('-2');
                }
            }
        } catch (\Exception $e) {
            $Model->rollback();
            $this->ajaxReturn('-3');
        }
    }

    public function getData()
    {
        $queryparam = json_decode(file_get_contents("php://input"), true);
        $Model = M();
        $sql_select = "
select
	t.*
from bkmg_book t ";
        $sql_count = "
select
	count(1) c
from bkmg_book t ";
        $sql_select = $this->buildSql($sql_select, "t.bk_atpstatus is null");
        $sql_count = $this->buildSql($sql_count, "t.bk_atpstatus is null");

        if (null != $queryparam['search']) {
            $searchcontent = trim($queryparam['search']);
            $sql_select = $this->buildSql($sql_select, "t.bk_code like '%" . $searchcontent . "%'");
            $sql_count = $this->buildSql($sql_count, "t.bk_code like '%" . $searchcontent . "%'");

            $sql_select .= " or (t.bk_name like '%" .$searchcontent . "%' and t.bk_atpstatus is null)";
            $sql_count .= " or (t.bk_name like '%" .$searchcontent . "%' and t.bk_atpstatus is null)";
        }

        if (null != $queryparam['sort']) {
            $sql_select = $sql_select . " order by " . $queryparam['sort'] . ' ' . $queryparam['sortOrder'] . ' ';
        } else {
            $sql_select = $sql_select . " order by t.bk_code asc ";
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

    public function getTypes()
    {

    }

    public function submitImport()
    {
        $upload = new \Think\Upload();
        $upload->maxSize = 3145728;
        $upload->exts = array('xlsx');
        $upload->rootPath = './Public/uploads/';
        $upload->savePath = '';
        $info = $upload->upload();
        $filename = './Public/uploads/' . $info["updataexcel2007"]["savepath"] . $info["updataexcel2007"]["savename"];
        vendor("PHPExcel.PHPExcel");
        $objPhpExcel = \PHPExcel_IOFactory::load($filename);
        $excelsheet = $objPhpExcel->getActiveSheet()->toArray(null, true, true, true, true);

        echo json_encode($excelsheet);
    }

    public function getNextCode()
    {
        $Model = M();
        $sql_select = "select max(t.bk_code) maxcode from bkmg_book t";
        $Result = $Model->query($sql_select);
        if (count($Result) == 1) {
            $intVal = intval($Result[0]['maxcode']) + 1;
            return str_pad($intVal, 5, "0", STR_PAD_LEFT);
        }
        return "00001";
    }
}