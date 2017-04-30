<?php
/**
 * Created by PhpStorm.
 * User: wangshuo
 * Date: 2017/3/29
 * Time: 下午10:24
 */
namespace Admin\Controller;
class ReturnController extends BaseController{
    public function index(){
        $this->display();
    }

    /**
     * 根据图书编号查阅借阅历史，如果存在多条记录则由管理员来进行选择
     */
    public function search(){
        $sn = I('post.sn');
        $map['bk_code'] = array('EQ', $sn);
        $map['bk_atpstatus'] = array('EXP', "is null");
        $book = M('book')->where($map)->find();
        if($book){
            $bookid = $book['bk_atpid'];
            $m['br_bkid'] = $bookid;
            $m['br_atpstatus'] = array("EXP", "is null");
            $m['br_rttime'] = array("EXP", "is null");
            $lists = M('borrow br')->join('bkmg_book bk on br.br_bkid=bk.bk_atpid')->join('bkmg_employee emp on br.br_empid=emp.emp_atpid')->where($m)->select();
            $this->ajaxReturn($lists);
        } else {
            $this->ajaxReturn(null);
        }
    }

    /**
     * 归还图书，先处理借阅记录再增库存，在同一个事务内完成
     */
    public function returnBook(){
        $p = I('post.');
        $datas = $p['d'];
        $Model = M('borrow');
        $Model->startTrans();
        try {
            foreach ($datas as $data) {
                $d['br_rttime'] = date('Y-m-d H:i:s', time());
                $m['br_atpid'] = $data['id'];
                $res1 = $Model->where($m)->save($d);
                $b = $Model->where($m)->find();
                $res2 = M('book')->where(array('bk_atpid'=>$b['br_bkid']))->setInc('bk_curnum');
                if($res1 && $res2){

                } else {
                    $Model->rollback();
                    $this->ajaxReturn('-2');
                }
            }
            $Model->commit();
            $this->ajaxReturn('0');
        } catch(\Exception $e) {
            $Model->rollback();
            $this->ajaxReturn('-1');
        }
    }
}