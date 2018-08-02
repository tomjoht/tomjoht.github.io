<?php 
	//------------------- Edit here --------------------//
	$sendy_url = 'https://idratherbewriting.com/sendy';
	$list = 'T5XB9u6LwtocCHe6JWNy5g';
	//------------------ /Edit here --------------------//

	//--------------------------------------------------//
	//POST variables
	$name = $_POST['name'];
	$email = $_POST['email'];
	
	//subscribe
	$postdata = http_build_query(
	    array(
	    'name' => $name,
	    'email' => $email,
	    'list' => $list,
	    'boolean' => 'true'
	    )
	);
	$opts = array('http' => array('method'  => 'POST', 'header'  => 'Content-type: application/x-www-form-urlencoded', 'content' => $postdata));
	$context  = stream_context_create($opts);
	$result = file_get_contents($sendy_url.'/subscribe', false, $context);
	//--------------------------------------------------//
	
	echo $result;
?>