<?php
namespace Admin\Controller;
use Think\Controller;
class UserController extends BaseController
{

    public function index()
    {
        $this->display();
    }

    public function add()
    {
        $this->assignDsUserRole();
        $this->display();
    }

    public function edit()
    {
        $id = $_GET['id'];
        if ($id) {
            $Model = M("user");
            $data = $Model->where("u_atpid='%s'", array($id))->find();
            if ($data) {
                $this->assign('data', $data);
            }
        }
        $this->assignDsUserRole($id);
        $this->display("add");
    }

    public function submit()
    {
        $Model = M('user');
        $Model_userrole = M('userrole');
        $data = $Model->create();
        if (null == $data['u_atpid']) {
            $data['u_atpid'] = $this->makeGuid();
            $data['u_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
            $data['u_atpcreateuser'] = "";
            $data['u_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
            $data['u_atplastmodifyuser'] = "";
            $Model->execute("update newatp_userrole t set t.ur_atpstatus = 'DEL' where t.ur_userid = '". $data["u_atpid"]."'");
            if (null != $_POST['r_relrole']) {
                foreach ($_POST['r_relrole'] as $ritem) {
                    $idata = array();
                    $idata['ur_atpid'] = $this->makeGuid();
                    $idata['ur_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
                    $idata['ur_atpcreateuser'] = "";
                    $idata['ur_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                    $idata['ur_atplastmodifyuser'] = "";
                    $idata['ur_roleid'] = $ritem;
                    $idata['ur_userid'] = $data["u_atpid"];
                    $Model_userrole->add($idata);
                }
            }
            $Model->add($data);
        } else {
            $data['u_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
            $data['u_atplastmodifyuser'] = "";
            $Model->execute("update newatp_userrole t set t.ur_atpstatus = 'DEL' where t.ur_userid = '". $data["u_atpid"]."'");
            if (null != $_POST['r_relrole']) {
                foreach ($_POST['r_relrole'] as $ritem) {
                    $idata = array();
                    $idata['ur_atpid'] = $this->makeGuid();
                    $idata['ur_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
                    $idata['ur_atpcreateuser'] = "";
                    $idata['ur_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                    $idata['ur_atplastmodifyuser'] = "";
                    $idata['ur_roleid'] = $ritem;
                    $idata['ur_userid'] = $data["u_atpid"];
                    $Model_userrole->add($idata);
                }
            }
            $Model->where("u_atpid='%s'", array($data['u_atpid']))->save($data);
        }
    }

    public function del()
    {
        try {
            $ids = $_POST['ids'];
            $array = explode(',', $ids);
            if ($array && count($array) > 0) {
                $Model = M("user");
                foreach ($array as $id) {
                    $data = $Model->where("u_atpid='%s'", array($id))->find();
                    $data['u_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                    $data['u_atplastmodifyuser'] = "";
                    $data['u_atpstatus'] = 'DEL';
                    $Model->where("u_atpid='%s'", $id)->save($data);
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
from newatp_user t ";
        $sql_count = "
select
	count(1) c
from newatp_user t ";
        $sql_select = $this->buildSql($sql_select, "t.u_atpstatus is null");
        $sql_count = $this->buildSql($sql_count, "t.u_atpstatus is null");

        if (null != $queryparam['search']) {
            $searchcontent = trim($queryparam['search']);
            $sql_select = $this->buildSql($sql_select, "t.u_account like '%" . $searchcontent . "%'");
            $sql_count = $this->buildSql($sql_count, "t.u_account like '%" . $searchcontent . "%'");
        }

        if (null != $queryparam['sort']) {
            $sql_select = $sql_select . " order by " . $queryparam['sort'] . ' ' . $queryparam['sortOrder'] . ' ';
        } else {
            $sql_select = $sql_select . " order by t.u_account asc ";
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


    public function assignDsUserRole($userid)
    {
        $Model = M();
        $sql_select_role = "
select
	*
from newatp_role t
where t.r_atpstatus is null";
        $Result_role = $Model->query($sql_select_role);

        $sql_select_userrole = "

select
	*
from newatp_userrole t
where t.ur_atpstatus is null and t.ur_userid = '$userid' ";
        $Result_userrole = $Model->query($sql_select_userrole);

        foreach ($Result_role as $rk => &$rv) {
            foreach ($Result_userrole as $urk => &$urv) {
                if ($rv['r_atpid'] == $urv['ur_roleid']) {
                    $rv['aux_selected'] = '是';
                    break;
                }
            }
        }
        $this->assign('ds_userrole', $Result_role);
    }




}