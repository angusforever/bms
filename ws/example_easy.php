<?php
require_once('nusoap.php');

$server = new soap_server();
$server->soap_defencoding = "UTF-8";
$server->decode_utf8 = false;
$server->xml_encoding = "UTF-8";
$server->configureWSDL("ATP_PHP_WS_Example");

$server->register("GetStr", array("name" => "xsd:string"), array("return" => "xsd:string"));

$server->wsdl->addComplexType('UserInfo','complexType','struct','all','',
    array(
        'A' => array('name' => 'A', 'type' => 'xsd:string'),
        'B' => array('name' => 'B', 'type' => 'xsd:string')
    )
);

$server->wsdl->addComplexType(
    'UserInfoArray',
    'complexType',
    'array',
    '',
    'SOAP-ENC:Array',
    array(),
    array(array('ref' => 'SOAP-ENC:arrayType','wsdl:arrayType' => 'tns:UserInfo[]')),
    'tns:UserInfo'
);

$server->register('GetArray', array('param1' => 'xsd:string', 'param2' => 'xsd:string',), array('return' => 'tns:UserInfoArray'));
$HTTP_RAW_POST_DATA = isset($HTTP_RAW_POST_DATA) ? $HTTP_RAW_POST_DATA : "";
$server->service($HTTP_RAW_POST_DATA);


//class UserInfo
//{
//    var $A;
//    var $B;
//}

function GetStr($name)
{
    return "Hello, { $name }!";
}

function GetArray($param1, $param2)
{
    $obj_ret = array();
    $obj1 = array();
    $obj1['A'] = "1";
    $obj1['B'] = "2";
    $obj2 = array();
    $obj2['A'] = "3";
    $obj2['B'] = "4";
    $obj3 = array();
    $obj3['A'] = $param1;
    $obj3['B'] = $param2;
//    array_push($obj_ret, $obj1);
//    array_push($obj_ret, $obj2);
    array_push($obj_ret, $obj3);
    return $obj_ret;
//    return null;

}


?>