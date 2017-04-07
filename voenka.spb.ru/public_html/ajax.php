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
if (!empty($_GET['action'])) {
    switch ($_GET['action']) {
        case 'getCity':
            $res = $pdo->runSnippet('getCity',array(
                'words' => $_GET['words'],
            ));
            break;
    }
} elseif (!empty($_POST['action'])){
    return;
} else {
    return;
}
if (!empty($res)) {
    $res = json_encode($res);
    die($res);
}
    