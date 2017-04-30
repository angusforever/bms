<?php
require_once('nusoap.php');
/*
// Good call
$test1 = showPhrases(0, "HEY YOU GUYS!");
$test2 = showPhrases(30, "Alexander the Great");
$test3 = showGroupItems("Picnic");
$test4 = showMadLib("disagreeable","dilapidated","evanescent","ubiquitous","obediently","painfully","monkey","spaceship","boogey man","answer","photographed", "knitted");
$test5 = showNumbers(5);
$taxes = array('price' => "63.10", 'state' => "WY");
$test6 = showTaxes($taxes);

echo "<pre>";
print_r($test1);
print_r($test2);
print_r($test3);
print_r($test4);
print_r($test5);
print_r($test6);
echo "</pre>";
exit; 
*/

// Instantiate the server
$server = new soap_server();
$server->soap_defencoding = 'UTF-8'; // make it UTF-8 
// Create the WSDL 
$wsdl_addr = 'http://localhost/nusoap-0.9.5/lib/productlist.php';
$server->configureWSDL('HirdWebExample', $wsdl_addr);

// COMPLEX TYPES FOR THE WEBSERVICE FUNCTIONS
// *************************************************************************
// Status Message Array ++++++++++++++++++++++++++++++++++++++++++
$server->wsdl->addComplexType('status_mssg','complexType','struct','all','',
	array(
		'status' => array('name' => 'status', 'type' => 'xsd:string'),
		'message' => array('name' => 'message', 'type' => 'xsd:string')
	)
);
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// showNumbers types ++++++++++++++++++++++++++++++++++++++++++
$server->wsdl->addComplexType(
	'numbers','complexType','array','',
	'SOAP-ENC:Array',
	array(),
	array(array('ref'=>'SOAP-ENC:arrayType','wsdl:arrayType'=>'xsd:string[]')), 'xsd:string'
);

$server->wsdl->addComplexType('showNumbers','complexType','struct','all','',
	array(
		'status' => array('name' => 'head', 'type' => 'tns:status_mssg'),
		'numbers' => array('name' => 'message', 'type' => 'tns:numbers')
	)
);
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// showGroupItems types ++++++++++++++++++++++++++++++++++++++++++
$server->wsdl->addComplexType('showMadLib','complexType','struct','all','',
	array(
		'status' => array('name' => 'head', 'type' => 'tns:status_mssg'),
		'mad_lib' => array('name' => 'message', 'type' => 'xsd:string')
	)
);
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// showGroupItems types ++++++++++++++++++++++++++++++++++++++++++
$server->wsdl->addComplexType(
	'all_food','complexType','struct','all','',
	array(
		'food' => array('name' => 'food', 'type' => 'xsd:string', 'minOccurs' => "0"),
		'drink' => array('name' => 'drink', 'type' => 'xsd:string', 'minOccurs' => "0"),
		'treat' => array('name' => 'treat', 'type' => 'xsd:string', 'minOccurs' => "0"),
	)
);


$server->wsdl->addComplexType(
	'groupItems','complexType','struct','all','',
	array(
		'food' => array('name' => 'food', 'type' => 'tns:all_food'),
		'equip' => array('name' => 'equip', 'type' => 'xsd:string', 'minOccurs' => "0"),
		'transport' => array('name' => 'transport', 'type' => 'xsd:string', 'minOccurs' => "0"),
		'people' => array('name' => 'people', 'type' => 'xsd:string', 'minOccurs' => "0"),
	)
);

$server->wsdl->addComplexType('showGroupItems','complexType','struct','all','',
	array(
		'status' => array('name' => 'head', 'type' => 'tns:status_mssg'),
		'group_items' => array('name' => 'message', 'type' => 'tns:groupItems')
	)
);
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// showTaxes types ++++++++++++++++++++++++++++++++++++++++++
$server->wsdl->addComplexType('taxes','complexType','struct','all','',
	array(
		'price' => array('name' => 'price', 'type' => 'xsd:float', 'minOccurs' => "0"),
		'tax' => array('name' => 'tax', 'type' => 'xsd:float', 'minOccurs' => "0"),
		'total' => array('name' => 'total', 'type' => 'xsd:float', 'minOccurs' => "0"),
		'state' => array('name' => 'state', 'type' => 'xsd:string', 'minOccurs' => "0"),
	)
);

$server->wsdl->addComplexType('showTaxes','complexType','struct','all','',
	array(
		'status' => array('name' => 'head', 'type' => 'tns:status_mssg'),
		'taxes' => array('name' => 'message', 'type' => 'tns:taxes')
	)
);
// the input declaration
$server->wsdl->addComplexType('inTaxArray','complexType','struct','all','',
	array(
		'price' => array('name' => 'price', 'type' => 'xsd:string'),
		'state' => array('name' => 'state', 'type' => 'xsd:string')
	)
);
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// showPhrases types ++++++++++++++++++++++++++++++++++++++++++
$server->wsdl->addComplexType('showPhrases','complexType','struct','all','',
	array(
		'status' => array('name' => 'head', 'type' => 'tns:status_mssg'),
		'phrase' => array('name' => 'message', 'type' => 'xsd:string')
	)
);
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// ================================================
// === showPhrases register
$in = array(
	'id' => 'xsd:string',
	'name' => 'xsd:string',
);
$out = array('return' => 'tns:showPhrases');
$namespace = 'uri:hirdwebservice';
$soapaction = 'uri:hirdwebservice/showPhrases';
$doc = 'Shows a phrase from Shakespeare and replaces the name with the supplied name. ID is a number from 0 - 4';
$server->register('showPhrases', $in, $out, $namespace, $soapaction, 'rpc', 'encoded', $doc);
// ================================================

// ================================================
// === showTaxes register
$in = array(
	'in' => 'tns:inTaxArray'
);
$out = array('return' => 'tns:showTaxes');
$namespace = 'uri:hirdwebservice';
$soapaction = 'uri:hirdwebservice/showTaxes';
$doc = 'Shows the taxes based on state taxes. Currently, the only states available in this are: AZ,AL,AK, CA, OR, WA, UT, ID, WY, Defaults to CA if no state is provided.';
$server->register('showTaxes', $in, $out, $namespace, $soapaction, 'rpc', 'encoded', $doc);
// ================================================


// ================================================
// === showGroupItems register
$in = array(
	'id' => 'xsd:string',
);
$out = array('return' => 'tns:showGroupItems');
$namespace = 'uri:hirdwebservice';
$soapaction = 'uri:hirdwebservice/showGroupItems';
$doc = 'Simplistic service to return an array of items for a specific event, the ones available are: movie, picnic, drive, shopping';
$server->register('showGroupItems', $in, $out, $namespace, $soapaction, 'rpc', 'encoded', $doc);
// ================================================

// ================================================
// === showMadLib register
$in = array(
	'adj1' => 'xsd:string',
	'adj2' => 'xsd:string',
	'adj3' => 'xsd:string',
	'adj4' => 'xsd:string',
	'adverb1' => 'xsd:string',
	'adverb2' => 'xsd:string',
	'noun1' => 'xsd:string',
	'noun2' => 'xsd:string',
	'noun3' => 'xsd:string',
	'verb1' => 'xsd:string',
	'verb_past1' => 'xsd:string',
	'verb_past2' => 'xsd:string',
);
$out = array('return' => 'tns:showMadLib');
$namespace = 'uri:hirdwebservice';
$soapaction = 'uri:hirdwebservice/showMadLib';
$doc = 'Returns a mad lib based on the data it is sent. Need 4 Adjectives, 2 Adverbs, 3 Nouns, 1 Verb, and 2 Verb: Past Tense. It replies with a string that contains the madlib. ';
$server->register('showMadLib', $in, $out, $namespace, $soapaction, 'rpc', 'encoded', $doc);
// ================================================

// ================================================
// === showNumbers register
$in = array(
	'id' => 'xsd:string',
);
$out = array('return' => 'tns:showNumbers');
$namespace = 'uri:hirdwebservice';
$soapaction = 'uri:hirdwebservice/showNumbers';
$doc = 'Returns an array of numbers in a non-assoc array key format';
$server->register('showNumbers', $in, $out, $namespace, $soapaction, 'rpc', 'encoded', $doc);
// ================================================

$server->service($HTTP_RAW_POST_DATA);
exit;


// **** Function for the webservice
function showPhrases($id, $name){
	require('items.php');

	// check for empty parameters
	if ( ($name == '') || (!isset($name)) ) {
		return error("partial");
	}

	if ( $id == 100 ) {
		return error("not_found");
	}

	// place all validation code here
	if ( ($id < 0) || ($id > 4)  ){
		return error('bounds');
	}

	// Check the name for swear words
	if ( strtolower($name) == 'ass'){
		return error('custom', '', 'Please do not use drunken sailor language when using the webservice.');
	}

	// replace all the needles with the name
	$phrase = preg_replace("/NnnnnnnnnN/", $name, $phrases[$id]);
	$fin_data['status'] = array('status'=>'ok','message'=>'');
	$fin_data['phrase'] = $phrase;

	return $fin_data;
}

function showTaxes($in = array()){
	require('items.php');
	// Make sure the state is lowercase
	$state = strtolower($in['state']);
	$price = $in['price'];
	// Check the array keys to validate
	$validate = array_keys($tax_rates);

	// place all validation code here
	if ( strlen($state) > 2 ){
		return error('custom', '', 'The state that was passed is not in the correct format. It should only be 2 characters');
	}

	if ( !in_array($state, $validate) ){
		// return an error
		return error("not_found");
	}

	if ( $price < 0 ){
		return error('less_than_zero');
	}

	if ( $price == '' ){
		return error('empty');
	}

	$tax = $tax_rates[$state] * $price;
	$final_price = $tax + $price;

	// set the array
	$final = array(
		'price' => $price,
		'tax'	=> money_format('%i',$tax),
		'total' => money_format('%i',$final_price),
		'state' => $states[$state],
	);

	$fin_data['status'] = array('status'=>'ok','message'=>'');
	$fin_data['taxes'] = $final;

	return  $fin_data;
}

function showGroupItems($id){
	require('items.php');

	// Make sure the id is lowercase
	$id = strtolower($id);

	if ( $id == '' ){
		return error('empty');
	}

	// make sure the item is in the array keys
	if ( !array_key_exists($id, $items) ){
		// return an error		
		return error("not_found");
	}

	$final = $items[$id];

	$fin_data['status'] = array('status'=>'ok','message'=>'');
	$fin_data['group_items'] = $final;

	return $fin_data;
}

function showMadLib($adj1, $adj2, $adj3, $adj4, $adverb1, $adverb2, $noun1, $noun2, $noun3, $verb1, $verb_past1, $verb_past2 ){
	// Put all validation code here
	if ( ($adj1 == '')||($noun1 == '')||($verb_past1 == '')||($adverb1 == '')||($adj2 == '')||($noun2 == '')||
		($noun3 == '')||($adj3 == '')||($verb1 == '')||($adverb2 == '')||($verb_past2 == '')||($adj4 == '') ){
		return error("partial");
	}

	// example submission:
	// "disagreeable","dilapidated","evanescent","ubiquitous","obediently","painfully","monkey","spaceship","boogey man","answer","photographed", "knitted"

	$mad_lib = "Today I went to the zoo. I saw a $adj1 $noun1 jumping up and down in its tree. He $verb_past1 $adverb1 through the " .
		"large tunnel that led to its $adj2 $noun2. I got some peanuts and passed them through the cage to a gigantic gray $noun3 " .
		"towering above my head. Feeding that animal made me hungry. I went to get a $adj3 scoop of ice cream. It filled my stomach." .
		"Afterwards I had to $verb1 $adverb2 to catch our bus. When I got home I $verb_past2 my mom for a $adj4 day at the zoo.";

	$fin_data['status'] = array('status'=>'ok','message'=>'');
	$fin_data['mad_lib'] = $mad_lib;

	return $fin_data;
}

function showNumbers($id){
	require("items.php");

	// place all validation code here
	if ( ($id < 0) || ($id > 5)  ){
		// return an error
		return error("custom", "numbers", "You need to enter an ID that is 0, 1, 2, 3, 4, or 5.");
	}

	$numbers = $various[$id];

	$final_set = array();
	foreach ( $numbers as $number ){
		$final_set[] = $number['number'];
	}


	$fin_data['head'] = array('status'=>'ok','message'=>'');
	$fin_data['numbers'] = $final_set;

	return $fin_data;
}

function error($err, $struct = 'phrase', $message = ''){
	$error['status']['status']='error';
	$error[$struct]= '';
	switch ($err) {
		case "empty":
			$error['status']['message']='There was nothing passed to the webservice, so nothing can be returned.';
			break;
		case "partial":
			$error['status']['message']="Not all required parameters were passed, so the webservice can not return any information.";
			break;
		case "not_found":
			$error['status']['message']='The parameter you passed was not found, please try again.';
			break;
		case "bounds":
			$error['status']['message']='The ID that was passed is out of the allowable boundaries. Please try your request again within the allowable range.';
			break;
		case "less_than_zero":
			$error['status']['message']='The number recieved is less than zero, and will not work with this service. Please double check the number and try again.';
			break;
		case 'custom':
			$error['status']['message'] = $message;
			break;
		default:
			$error['status']['message'] = 'There was a problem with your request, please try again.';
			break;
	}
	return $error;
}

?>