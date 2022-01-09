<?php
    include "db_conn_ramenmap.php";
    $StoreName = $_REQUEST["StoreName"];
    $Tel = $_REQUEST["Tel"];
    $MRTStation = $_REQUEST["MRTStation"]; 
    $MRTRoute = $_REQUEST["MRTRoute"];
    $BusinessHour = $_REQUEST["BusinessHour"];
    $Address = $_REQUEST["Address"];

    
    $query = ("INSERT INTO store(StoreName, MRTStation, MRTRoute, Tel, BusinessHour) VALUES(?,?,?,?,?)");   
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(array($StoreName, $MRTStation, $MRTRoute, $Tel, $BusinessHour)); //執行sql語法

    $query = ("SELECT StoreID From store WHERE StoreName = ?");
    $stmt = $db->prepare($query); //db為db_conn.php新建的連線物件 
    $error = $stmt->execute(array($StoreName));
    $result = $stmt->fetchAll();  //將所有搜尋結果存於result
    //echo json_encode($result);

    $StoreID = $result[0][0];

    //echo json_encode($StoreID);
    $query = ("INSERT INTO location(StoreID, StoreName, MRTStation, MRTRoute, Address) VALUES(?,?,?,?,?)");
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(array($StoreID,$StoreName, $MRTStation,$MRTRoute,$Address));

    echo json_encode($StoreID);
    
?>
