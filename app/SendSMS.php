<?php

namespace App;

/**
* class SendSMS to send SMS on Mobile Numbers.
* @author Abu Bakar Siddique
*/

class SendSMS
{	
	function __construct() {

	}

	public function MessageSend($to, $message) {  
	    $curl = curl_init();
	    $authentication = base64_encode('dhakabd987:Romans01711461528');
	    $sender = "dhakabd987";  // your sender ID

	    curl_setopt_array($curl, array(
	    CURLOPT_URL => "http://107.20.199.106/sms/1/text/single",
	    CURLOPT_RETURNTRANSFER => true,
	    CURLOPT_ENCODING => "",
	    CURLOPT_MAXREDIRS => 10,
	    CURLOPT_TIMEOUT => 30,
	    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	    CURLOPT_CUSTOMREQUEST => "POST",
	    CURLOPT_POSTFIELDS => "{ \"from\":\"$sender\", \"to\":\"$to\", \"text\":\"$message\" }",
	    CURLOPT_HTTPHEADER => array(
	        "accept: application/json",
	        "authorization: Basic $authentication=",
	        "content-type: application/json"
	    ),
	    ));

	    $response = curl_exec($curl);
	    curl_close($curl); 
	    return $response;
 	}

}
