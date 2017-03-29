<?php
require_once 'check.php';
require_once 'connect.php';


if ($_POST) {
    insertBless();
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
    date_default_timezone_set('PRC');
    $Date['g_time'] = date("Y-m-d H:i:s");
    $Date['g_agent']= $_SERVER['HTTP_USER_AGENT'];
    $Date['g_ip'] = $ip;
    $Date['g_hash'] = md5(uniqid(rand(), true));
    return $Date;
}
function insertBless(){
    $Date = initDate();
    $mysqli = initConnect();
    // 预处理方式插入单行数据
    $keys =  array(); $values = array();
    foreach ($Date as $key => $value) {
        $keys[] = "`".$key."`";
        $values[] = $value;
    }
    $str_keys = implode(',', $keys);

    $query = "INSERT INTO bless (".$str_keys.") VALUES(?,?,?,?)";

    if($statement = $mysqli->prepare($query)){
        $statement->bind_param('ssss',$values[0], $values[1], $values[2], $values[3] );
    }else{ print 'Error : ('. $mysqli->error .') '; }

    if($statement->execute()){
        // 查询当前点赞的人数
        mysqli_query($mysqli,"SELECT * FROM bless");
        $allRank = mysqli_affected_rows($mysqli);

        // 该用户点赞的次数
        mysqli_query($mysqli,"SELECT * FROM bless WHERE g_ip ='".$Date['g_ip']."'");
        $selfRank = mysqli_affected_rows($mysqli);

        @header('Content-Type: application/json; charset=UTF-8');
        $response = array(
            'Success' => true,
            'message' => "谢谢您对我们的祝福！也祝您生活愉快！",
            'allRank' => $allRank,
            'selfRank' => $selfRank,
            'ID' =>$statement->insert_id
        );
        echo json_encode($response);
    } else{
        print ('Error : '. $mysqli->error);
    }

    $statement->close();
    $mysqli->close();
}

//function searchBless($ip){
//    $mysqli = initConnect();
//    //create a prepared statement
//    $query = "SELECT id FROM bless WHERE g_ip=?";
//    $stmt = $mysqli->prepare($query);
//    $stmt->bind_param('s', $ip);
//
//    if(!$stmt->execute()){ print ('Error! : '.$mysqli->error ); }
//
//    $result = $stmt->bind_result( $id );
//    echo $result."search";
//    $mysqli->close();
//    return $id;
//}