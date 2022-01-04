<?php
    include "db_conn_ramen.php";
    $MRTRoute = "淡水信義線(紅線)";//$_REQUEST["MRTRoute"]; //前端需要同步

    $query = ("SELECT StoreName, MRTStation, MRTRoute, Tel, BusinessHour, iframe FROM store WHERE MRTRoute = ? ");   
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(array($MRTRoute)); //執行sql語法
    $result = $stmt->fetchAll();

    echo json_encode($result);
  
?>
