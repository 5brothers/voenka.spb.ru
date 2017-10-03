<?php
require_once(MODX_CORE_PATH . 'components/sms/UnisenderApi.php');
$config = $modx->getConfig();
$result = '';
$apikey = $config['unisenderAPI'];
$uni = new \Unisender\ApiWrapper\UnisenderApi($apikey);
if (($phone != '')&&($text!='')){
    $phone = formatPhone($phone);
	$sender = 'Voenka';
	$result = $uni->sendSms(Array(
		"phone" => $phone,
		"sender" => $sender,
		"text" => $text
	));
}
return $result;

function formatPhone($phone){
    $formattedPhone = preg_replace('/[^0-9]/', '', $phone);
    switch (strlen($formattedPhone)){
        case 10:
            $phone = '+7'.$formattedPhone;
            break;
        case 11:
            if ($formattedPhone{0}=='8'){
                $code = '+7';
            } elseif ($formattedPhone{0}=='7'){
                $code = '+7';
            } else {
                $code = '';
            }
            $phone = $code.substr($formattedPhone,1,strlen($formattedPhone));
            break;
        case 12:
            $phone = '+'.$formattedPhone;
            break;
        default:
            break;
    }
    return $phone;
}