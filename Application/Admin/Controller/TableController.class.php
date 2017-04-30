<?php
namespace Admin\Controller;
use Think\Controller;
class TableController extends BaseController {

    public function index()
    {
        $this->display();
    }

    public function add(){
        $this->assignDsUserfunc();
        $this->display();
    }

    public function edit(){
        $id = $_GET['id'];
        if ($id) {
            $Model = M("userfunc");
            $data = $Model->where("u_atpid='%s'",array($id))->find();
            if ($data) {
                $this->assign('data', $data);
            }
        }
        $this->assignDsUserfunc();
        $this->display("add");
    }

    public function submit()
    {
        $upload = new \Think\Upload();
        $upload->maxSize = 3145728;
        $upload->exts = array('jpg', 'gif', 'png', 'jpeg');
        $upload->rootPath = './Public/uploads/';
        $upload->savePath = '';
        $info = $upload->upload();

        $Model = M('userfunc');
        $data = $Model->create();
        if (null == $data['u_atpid']) {
            $data['u_atpid'] = $this->makeGuid();
            $data['u_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
            $data['u_atpcreateuser'] = I('session.u_account', '');
            $data['u_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
            $data['u_atplastmodifyuser'] = I('session.u_account', '');
            if (I('post.u_issuper', '') != '') {
                $data['u_issuper'] = "是";
            } else {
                $data['u_issuper'] = '';
            }
            if (I('post.u_refereeid', '') == '') {
                $data['u_refereeid'] = null;
            }
            if ($info["u_filename"]) {
                $data['u_filename'] = $info["u_filename"]["savepath"] . $info["u_filename"]["savename"];
            }
            $Model->add($data);
        } else {
            $data['u_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
            $data['u_atplastmodifyuser'] = I('session.u_account', '');

            if(I('post.u_issuper', '')!='') {
                $data['u_issuper'] = "是";
            } else {
                $data['u_issuper'] = '';
            }
            if (I('post.u_refereeid', '') == '') {
                $data['u_refereeid'] = null;
            }
            if($info["u_filename"]) {$data['u_filename'] = $info["u_filename"]["savepath"].$info["u_filename"]["savename"];}
            $Model->where("u_atpid='%s'", array($data['u_atpid']))->save($data);
        }
    }

    public function del(){
        try {
            $ids = $_POST['ids'];
            $array = explode(',', $ids);
            if ($array && count($array) > 0) {
                $Model = M("userfunc");
                foreach ($array as $id) {
                    $data = $Model->where("u_atpid='%s'",array($id))->find();
                    $data['u_atplastmodifydatetime'] = date('Y-m-d H:i:s',time());
                    $data['u_atplastmodifyuser'] = I('session.u_account','');
                    $data['u_atpstatus'] = 'DEL';
                    $Model->where("u_atpid='%s'", $id)->save($data);
                }
            }
        } catch (\Exception $e) {
            echo "fail".$e;
        }
    }

    public function getData(){
        $queryparam = json_decode(file_get_contents( "php://input"), true);
        $Model = M();
        $sql_select="
select
	t.*,
	t1.u_name refereename,
	t1.u_account refereeaccount
from newatp_userfunc t
left join newatp_userfunc t1 on t.u_refereeid = t1.u_atpid ";
        $sql_count="
select
	count(1) c
from newatp_userfunc t
left join newatp_userfunc t1 on t.u_refereeid = t1.u_atpid ";
        $sql_select = $this->buildSql($sql_select,"t.u_atpstatus is null");
        $sql_count = $this->buildSql($sql_count,"t.u_atpstatus is null");
        if (null != $queryparam['search'])
        {
            $searchcontent = trim($queryparam['search']);
            $sql_select = $this->buildSql($sql_select,"t.u_account like '%".$searchcontent."%'");
            $sql_count = $this->buildSql($sql_count,"t.u_account like '%".$searchcontent."%'");
        }
        if (null != $queryparam['u_account'])
        {
            $searchcontent = trim($queryparam['u_account']);
            $sql_select = $this->buildSql($sql_select,"t.u_account like '%".$searchcontent."%'");
            $sql_count = $this->buildSql($sql_count,"t.u_account like '%".$searchcontent."%'");
        }
        if (null != $queryparam['u_name'])
        {
            $searchcontent = trim($queryparam['u_account']);
            $sql_select = $this->buildSql($sql_select,"t.u_name like '%".$searchcontent."%'");
            $sql_count = $this->buildSql($sql_count,"t.u_name like '%".$searchcontent."%'");
        }
        if (null != $queryparam['u_birthday_begin'])
        {
            $searchcontent = trim($queryparam['u_birthday_begin']);
            $sql_select = $this->buildSql($sql_select,"t.u_birthday >= '".$searchcontent."'");
            $sql_count = $this->buildSql($sql_count,"t.u_birthday >= '".$searchcontent."'");
        }
        if (null != $queryparam['u_birthday_end'])
        {
            $searchcontent = trim($queryparam['u_birthday_end']);
            $sql_select = $this->buildSql($sql_select,"t.u_birthday <= '".$searchcontent."'");
            $sql_count = $this->buildSql($sql_count,"t.u_birthday <= '".$searchcontent."'");
        }
        if (null != $queryparam['u_role'])
        {
            $searchcontent = trim($queryparam['u_role']);
            $sql_select = $this->buildSql($sql_select,"t.u_role = '".$searchcontent."'");
            $sql_count = $this->buildSql($sql_count,"t.u_role = '".$searchcontent."'");
        }
        if (null != $queryparam['sort']) {
            $sql_select = $sql_select." order by ".$queryparam['sort'].' '.$queryparam['sortOrder'].' ';
        }
        else {
            $sql_select = $sql_select . " order by t.u_account asc ";
        }
        if (null !=$queryparam['limit']) {

            if( '0' == $queryparam['offset'])
            {
                $sql_select = $sql_select . " limit " . '0' . ',' . $queryparam['limit'] . ' ';
            }
            else
            {
                $sql_select = $sql_select . " limit " . $queryparam['offset'] . ',' . $queryparam['limit'] . ' ';
            }
        }
        $Result = $Model->query($sql_select);
        $Count = $Model->query($sql_count);
        echo json_encode(array( 'total' => $Count[0]['c'],'rows' => $Result));
    }



    public function assignDsUserfunc(){
        $Model = M();
        $sql_select="
select
	*
from newatp_userfunc t
where t.u_atpstatus is null";
        $Result = $Model->query($sql_select);
        $this->assign('ds_userfunc',$Result);
    }




}