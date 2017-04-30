
<?php

$soap = new SoapClient("http://localhost/demo/newatp/ws/example_easy.php?wsdl");
$result1 = $soap->GetStr('陈炜钊哈哈哈');
$result2 = $soap->GetArray('陈炜钊','哈哈哈');
var_dump($result1);
var_dump($result2);

?>