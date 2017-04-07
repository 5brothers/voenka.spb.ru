<?php
$modx->setDebug(E_ALL & ~E_NOTICE); // sets error_reporting to everything except NOTICE remarks
$modx->setLogLevel(modX::LOG_LEVEL_DEBUG);
$output = array();
if (strlen($words)>2){
    $result = $modx->query("SELECT * FROM `sdekCity` WHERE `short` LIKE '%".$words."%' LIMIT 5");
    if (!is_object($result)) {
        $output = array('id' => 0);
    } else {
        while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
            $output[] = array(
                'id' => $row['id'],
                'full' => $row['full'],
                'short' => $row['short']
            );
        }
    }
}
return $output;
