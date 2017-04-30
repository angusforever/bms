<?php
namespace Admin\Controller;
use Think\Controller;
class LogController extends BaseController
{

    public function index()
    {
        $this->display();
    }

    public function getData()
    {
        $queryparam = json_decode(file_get_contents("php://input"), true);
        $Model = M();
        $sql_select = "
select
	t.*
from newatp_log t ";
        $sql_count = "
select
	count(1) c
from newatp_log t ";
        $sql_select = $this->buildSql($sql_select, "t.l_atpstatus is null");
        $sql_count = $this->buildSql($sql_count, "t.l_atpstatus is null");

        if (null != $queryparam['search']) {
            $searchcontent = trim($queryparam['search']);
            $sql_select = $this->buildSql($sql_select, "t.l_logcontent like '%" . $searchcontent . "%'");
            $sql_count = $this->buildSql($sql_count, "t.l_logcontent like '%" . $searchcontent . "%'");
        }

        if (null != $queryparam['sort']) {
            $sql_select = $sql_select . " order by " . $queryparam['sort'] . ' ' . $queryparam['sortOrder'] . ' ';
        } else {
            $sql_select = $sql_select . " order by t.l_logcontent asc ";
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