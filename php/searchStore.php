<?php
    include "db_conn_ramen.php";
    $StoreName = $_REQUEST["StoreName"]; //前端需要同步

    $query = ("SELECT MRTStation, MRTRoute, Tel, BusinessHour, iframe FROM store WHERE StoreName LIKE '%" .$StoreName ."%' ");   
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(); //執行sql語法
    $result = $stmt->fetchAll();

    echo json_encode($result);
  
?>
