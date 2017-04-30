<?php
/**
 * Created by PhpStorm.
 * User: wangshuo
 * Date: 2017/4/2
 * Time: 下午2:02
 */
namespace Admin\Controller;
class BookTypeController extends BaseController{
    public function index(){
        $this->display();
    }

    public function add()
    {
        $this->display();
    }

    public function edit()
    {
        $id = $_GET['id'];
        if ($id) {
            $Model = M("type");
            $data = $Model->where("tp_atpid='%s'", array($id))->find();
            if ($data) {
                $this->assign('data', $data);
            }
        }
        $this->display("add");
    }

    public function submit()
    {
        $Model = M('type');
        try {
            $data = $Model->create();
            if (null == $data['tp_atpid']) {
                $data['tp_atpid'] = $this->makeGuid();
                $data['tp_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
                $data['tp_atpcreateuser'] = session('emp_atpid');;
                $data['tp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                $data['tp_atplastmodifyuser'] = session('emp_atpid');;
                $res = $Model->add($data);
            } else {
                $data['tp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                $data['tp_atplastmodifyuser'] = session('emp_atpid');;
                $res = $Model->where("tp_atpid='%s'", array($data['tp_atpid']))->save($data);
            }

            if ($res) {
                $this->ajaxReturn('0');
            } else {
                $this->ajaxReturn('-2');
            }
        } catch(\Exception $e) {
            $this->ajaxReturn('-1');
        }

    }

    public function del()
    {
        try {
            $ids = $_POST['ids'];
            $array = explode(',', $ids);
            if ($array && count($array) > 0) {
                $Model = M("type");
                foreach ($array as $id) {
                    $data = $Model->where("tp_atpid='%s'", array($id))->find();
                    $data['tp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                    $data['tp_atplastmodifyuser'] = session('emp_atpid');;
                    $data['tp_atpstatus'] = 'DEL';
                    $Model->where("tp_atpid='%s'", $id)->save($data);
                }
            }
        } catch (\Exception $e) {
            echo "fail" . $e;
        }
    }

//    public function add()
//    {
//        $pid = I('param.pid');
//        $name = I('param.name');
//        $Model = M("type");
//        $data['tp_atpid'] = $this->makeGuid();
//        $data['tp_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
//        $data['tp_atpcreateuser'] = session('emp_atpid');
//        $data['tp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
//        $data['tp_atplastmodifyuser'] = session('emp_atpid');
//        $data['tp_pid'] = $pid;
//        $data['tp_name'] = $name;
//        $res = $Model->add($data);
//        if ($res) {
//            $this->ajaxReturn('0');
//        } else {
//            $this->ajaxReturn('-1');
//        }
//    }
//
//    public function rename()
//    {
//        $id = I('param.id');
//        $name = I('param.name');
//        $Model = M("type");
//        $data['tp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
//        $data['tp_atplastmodifyuser'] = session('emp_atpid');
//        $data['tp_name'] = $name;
//        $res = $Model->where("tp_atpid='%s'", array($id))->save($data);
//        if ($res) {
//            $this->ajaxReturn('0');
//        } else {
//            $this->ajaxReturn('-1');
//        }
//    }
//
//    public function submit()
//    {
//        $Model = M('employee');
//        $data = $Model->create();
//        if (null == $data['emp_atpid']) {
//            $data['emp_atpid'] = $this->makeGuid();
//            $data['emp_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
//            $data['emp_atpcreateuser'] = "";
//            $data['emp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
//            $data['emp_atplastmodifyuser'] = "";
//            $Model->add($data);
//        } else {
//            $data['emp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
//            $data['emp_atplastmodifyuser'] = "";
//            $Model->where("emp_atpid='%s'", array($data['emp_atpid']))->save($data);
//        }
//    }
//
//    public function remove()
//    {
//        $id = I('param.id');
//        $Model = M("type");
//        $m['tp_atpstatus'] = array('EXP', 'is null');
//        $m['tp_pid'] = $id;
//        $types = M('type')->where($m)->select();
//        if($types && count($types) >= 1){
//            $this->ajaxReturn('-1');
//        }
//        $data = $Model->where("tp_atpid='%s'", array($id))->find();
//        $data['tp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
//        $data['tp_atplastmodifyuser'] = session('emp_atpid');
//        $data['tp_atpstatus'] = 'DEL';
//        $res = $Model->where("tp_atpid='%s'", $id)->save($data);
//        if($res) {
//            $this->ajaxReturn('0');
//        } else {
//            $this->ajaxReturn('-2');
//        }
//    }

    public function getData()
    {
//        $m['tp_atpstatus'] = array('EXP', 'is null');
//        $sql = "select tp_atpid id,tp_pid pid,tp_name name,'true' open from bkmg_type where tp_atpstatus is null";
//        $types = M()->query($sql);
//        $this->ajaxReturn($types);

        $queryparam = json_decode(file_get_contents("php://input"), true);
        $Model = M();
        $sql_select = "
select
	t.*
from bkmg_type t ";
        $sql_count = "
select
	count(1) c
from bkmg_type t ";
        $sql_select = $this->buildSql($sql_select, "t.tp_atpstatus is null");
        $sql_count = $this->buildSql($sql_count, "t.tp_atpstatus is null");

        if (null != $queryparam['search']) {
            $searchcontent = trim($queryparam['search']);
            $sql_select = $this->buildSql($sql_select, "t.tp_name like '%" . $searchcontent . "%'");
            $sql_count = $this->buildSql($sql_count, "t.tp_name like '%" . $searchcontent . "%'");
        }

        if (null != $queryparam['sort']) {
            $sql_select = $sql_select . " order by " . $queryparam['sort'] . ' ' . $queryparam['sortOrder'] . ' ';
        } else {
            $sql_select = $sql_select . " order by t.tp_name asc ";
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