<?php
require_once 'check.php';
require_once 'connect.php';

if ($_POST) {
    insertOne();
}
function initDate(){
    //获取用户 ip + 代理 + 时间
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    } else {
        $ip = $_SERVER['REMOTE_ADDR'];
    }
    $_POST['f_ip'] = $ip;
    $_POST['f_agent']= $_SERVER['HTTP_USER_AGENT'];
    date_default_timezone_set('PRC');
    $_POST['f_time'] = date("Y-m-d H:i:s");
    return $_POST;
}
function insertOne(){
    $Date = initDate();
    $mysqli = initConnect();
    // 预处理方式插入单行数据
    $keys =  array(); $values = array();
    foreach ($Date as $key => $value) {
        $keys[] = "`".$key."`";
        $values[] = $value;
    }
    $str_keys = implode(',', $keys);
   $str_values = implode(',', $values);

    $query = "INSERT INTO ".DB_TABLE." (".$str_keys.") VALUES(?,?,?,?,?,?,?,?)";
    if($statement = $mysqli->prepare($query)){
        //bind parameters for markers, where (s = string|datetime, i = integer, d = double,  b = blob)
        $statement->bind_param('ssisssss',$values[0], $values[1], $values[2], $values[3], $values[4], $values[5], $values[6], $values[7] );
    }else{
        print 'Error : ('. $mysqli->error .') ';
    }

    if($statement->execute()){
        print ('Success! ID : '.$statement->insert_id.'info:'.$str_values );
    }else{
        die('Error : ('. $mysqli->errno .') '. $mysqli->error);
    }
    $statement->close();
    $mysqli->close();
}
?>