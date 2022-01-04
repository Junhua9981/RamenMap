<?php
    include "db_conn_ramen.php";
    $StoreName = $_REQUEST["StoreName"];
    $Tel = $_REQUEST["Tel"];
    $MRTStation = $_REQUEST["MRTStation"]; //前端需要同步
    $MRTRoute = $_REQUEST["MRTRoute"];
    $BusinessHour = $_REQUEST["BusinessHour"];
    $Address = $_REQUEST["Address"];

    
    $query = ("INSERT INTO store(StoreName, MRTStation, MRTRoute, Tel, BusinessHour) VALUES(?,?,?,?,?)");   
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(array($StoreName, $MRTStation, $MRTRoute, $Tel, $BusinessHour)); //執行sql語法

    $query = ("INSERT INTO location(MRTStation, MRTRoute, Address, StoreName) VALUES(?,?,?,?)");
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(array($MRTStation,$MRTRoute,$Address,$StoreName));
    
    $query = ("SELECT MRTStation FROM store WHERE StoreName = ?");
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(array($StoreName));
    $result = $stmt->fetchAll();

    //echo json_encode($result[0][0]);
    //echo json_encode($MRTStation);
    if($result[0][0] == $MRTStation){
        echo json_encode("success");
    }
    else{
        echo json_encode("fail");
    }
?>
