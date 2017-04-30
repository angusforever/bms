<?php
/**
 * Created by PhpStorm.
 * User: wangshuo
 * Date: 2017/3/29
 * Time: 下午9:48
 */
namespace Admin\Controller;
class BorrowController extends BaseController{
    public function index(){
        $m['emp_atpstatus'] = array('EXP', 'is null');
        $users = M('employee')->where($m)->select();
        $this->assign('users', $users);
        $this->display();
    }

    /**
     * 根据图书编号查阅图书
     */
    public function search(){
        $sn = I('post.sn');
        $map['bk_code'] = array('EQ', $sn);
        $map['bk_atpstatus'] = array('EXP', "is null");
        $book = M('book')->where($map)->find();//根据图书编号得到相应的图书记录,由前端来根据库存控制可借阅数目
        $this->ajaxReturn($book);
    }

    /**
     * 处理借阅操作，先减库存再存借阅记录，在一个事务中完成
     */
    public function borrow(){
        $data = I('post.');
        $borrowUser = $data['borrowUser'];
        $books = $data['d'];
        $Model = M('book');
        $Model->startTrans();
        try {
            foreach ($books as $book) {
                //图书库存记录里同一个图书编号的书只存一条记录，借阅时先减库存再存借阅记录
                $b = $Model->where(array('bk_atpid'=>$book['sn']))->find();
                $curNum = $b['bk_curnum'] - $book['num'];
                $res1 = $Model->where(array('bk_atpid'=>$book['sn']))->save(array('bk_curnum'=>$curNum));

                //借阅记录为每本书一条记录（包括图书编号相同时）
                for($i = 0; $i < $book['num']; $i++) {
                    $d['br_atpid'] = $this->makeGuid();
                    $d['br_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
                    $d['br_atpcreateuser'] = session('emp_atpid');
                    $d['br_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
                    $d['br_atplastmodifyuser'] = session('emp_atpid');
                    $d['br_bkid'] = $book['sn'];
                    $d['br_empid'] = $borrowUser;
                    $d['br_num'] = 1;
                    $d['br_brtime'] = date('Y-m-d H:i:s', time());

                    $res2 = M('borrow')->add($d);
                }
            }

            if($res1 && $res2){
                $Model->commit();
                $this->ajaxReturn('0');
            } else {
                $Model->rollback();
                $this->ajaxReturn('-2');
            }
        } catch(\Exception $e) {
            $Model->rollback();
            $this->ajaxReturn('-1');
        }
    }
}