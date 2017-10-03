<?php

header('Content-Type: text/html; charset=utf-8');
define('MODX_API_MODE', true);
require 'index.php';
$pdo = $modx->getService('pdoTools');
// Откликаться будет ТОЛЬКО на ajax запросы
//if (empty($_SERVER['HTTP_X_REQUESTED_WITH']) || $_SERVER['HTTP_X_REQUESTED_WITH'] != 'XMLHttpRequest') {
//    return;
//}
// Сниппет будет обрабатывать не один вид запросов, поэтому работать будем по запрашиваемому действию
// Если в массиве POST нет действия - выход
if (!empty($_REQUEST['action'])) {
    switch ($_REQUEST['action']) {
        case 'getCity':
            $res = $pdo->runSnippet('getCity',array(
                'words' => $_REQUEST['words'],
            ));
            $res = json_encode($res);
            break;
        case 'sms':
            $res = $pdo->runSnippet('@FILE:snippets/sendSms.php',[
                'phone' => $_REQUEST['phone'],
                'text' => $_REQUEST['text']
            ]);
            break;
    }
} elseif (!empty($_REQUEST['action'])){
    return;
} else {
    return;
}
if (!empty($res)) {
    die($res);
}
    