<?php
namespace Admin\Controller;
use Think\Controller;
class ExcelController extends BaseController
{

    public function index()
    {
        $this->display();
    }


    public function submitimp1()
    {
        $upload = new \Think\Upload();
        $upload->maxSize = 3145728;
        $upload->exts = array('xlsx');
        $upload->rootPath = './Public/uploads/';
        $upload->savePath = '';
        $info = $upload->upload();
        $filename = './Public/uploads/' . $info["updataexcel2007"]["savepath"] . $info["updataexcel2007"]["savename"];
//        dump($info);
        vendor("PHPExcel.PHPExcel");
        $objPhpExcel = \PHPExcel_IOFactory::load($filename);
        $excelsheet = $objPhpExcel->getActiveSheet()->toArray(null, true, true, true, true);
//        dump($excelsheet);
//        if (count($excelsheet) > 4) {
//            unset($excelsheet[1]);
//            unset($excelsheet[2]);
//            unset($excelsheet[3]);
//            unset($excelsheet[4]);
////            dump($excelsheet);
//            session('temp_importstudent',array_values($excelsheet));
//        }
        echo json_encode($excelsheet);
//        dump($excelsheet);
    }



    public function exp()
    {
        vendor("PHPExcel.PHPExcel");
        $excel = new \PHPExcel();
        $letter = array('A', 'B', 'C', 'D', 'E', 'F', 'F', 'G');
        $tableheader = array('学号', '姓名', '性别', '年龄', '班级');
        for ($i = 0; $i < count($tableheader); $i++) {
            $excel->getActiveSheet()->setCellValue("$letter[$i]1", "$tableheader[$i]");
        }
        $data = array(
            array('1', '小王', '男', '20', '100'),
            array('2', '小李', '男', '20', '101'),
            array('3', '小张', '女', '20', '102'),
            array('4', '小赵', '女', '20', '103')
        );
        for ($i = 2; $i <= count($data) + 1; $i++) {
            $j = 0;
            foreach ($data[$i - 2] as $key => $value) {
                $excel->getActiveSheet()->setCellValue("$letter[$j]$i", "$value");
                $j++;
            }
        }
        $write = new \PHPExcel_Writer_Excel2007($excel);
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control:must-revalidate, post-check=0, pre-check=0");
        header("Content-Type:application/force-download");
        header("Content-Type:application/vnd.ms-execl");
        header("Content-Type:application/octet-stream");
        header("Content-Type:application/download");;
        header('Content-Disposition:attachment;filename="expexcel.xlsx"');
        header("Content-Transfer-Encoding:binary");
        $write->save('php://output');
    }





}