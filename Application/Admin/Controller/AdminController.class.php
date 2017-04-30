<?php
namespace Admin\Controller;
use Think\Controller;
class AdminController extends BaseController
{

    public function index()
    {
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
            $Model = M("employee");
            $data = $Model->where("emp_atpid='%s'", array($id))->find();
            if ($data) {
                $this->assign('data', $data);
            }
        }
        $this->display("add");
    }

    public function submit()
    {
        $Model = M('employee');
        try {
            $data = $Model->create();
            if (null == $data['emp_atpid']) {
                $data['emp_atpid'] = $this->makeGuid();
                $data['emp_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
                $data['emp_atpcreateuser'] = session('emp_atpid');;
                $data['emp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                $data['emp_atplastmodifyuser'] = session('emp_atpid');;
                $res = $Model->add($data);
            } else {
                $data['emp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                $data['emp_atplastmodifyuser'] = session('emp_atpid');;
                $res = $Model->where("emp_atpid='%s'", array($data['emp_atpid']))->save($data);
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
                $Model = M("employee");
                foreach ($array as $id) {
                    $data = $Model->where("emp_atpid='%s'", array($id))->find();
                    $data['emp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                    $data['emp_atplastmodifyuser'] = session('emp_atpid');;
                    $data['emp_atpstatus'] = 'DEL';
                    $Model->where("emp_atpid='%s'", $id)->save($data);
                }
            }
        } catch (\Exception $e) {
            echo "fail" . $e;
        }
    }

    public function getData()
    {
        $queryparam = json_decode(file_get_contents("php://input"), true);
        $Model = M();
        $sql_select = "
select
	t.*
from bkmg_employee t ";
        $sql_count = "
select
	count(1) c
from bkmg_employee t ";
        $sql_select = $this->buildSql($sql_select, "t.emp_atpstatus is null");
        $sql_count = $this->buildSql($sql_count, "t.emp_atpstatus is null");

        if (null != $queryparam['search']) {
            $searchcontent = trim($queryparam['search']);
            $sql_select = $this->buildSql($sql_select, "t.emp_account like '%" . $searchcontent . "%'");
            $sql_count = $this->buildSql($sql_count, "t.emp_account like '%" . $searchcontent . "%'");
        }

        if (null != $queryparam['sort']) {
            $sql_select = $sql_select . " order by " . $queryparam['sort'] . ' ' . $queryparam['sortOrder'] . ' ';
        } else {
            $sql_select = $sql_select . " order by t.emp_account asc ";
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