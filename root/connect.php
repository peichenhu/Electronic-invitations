<?php
require_once 'config.php';
function initConnect(){
    // 对象方式连接数据库
    $mysqli = new mysqli(DB_HOST,DB_USER,DB_PWD,DB_NAME);
    $mysqli->set_charset(DB_CHARSET);

    // 输出所有的连接数据库错误
    if ($mysqli->connect_error) {  die('Error : ('. $mysqli->connect_errno .') '. $mysqli->connect_error); }
    return $mysqli;
}