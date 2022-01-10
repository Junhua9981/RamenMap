<?php
    include "db_conn_ramenmap.php";
    $StoreID = $_REQUEST["StoreID"];
    
    $query = ("SELECT location.StoreID,location.StoreName, location.MRTStation, location.MRTRoute, store.Tel, store.BusinessHour, store.iframe, location.Address
               FROM location JOIN store ON location.StoreID = store.StoreID
               WHERE location.StoreID=? and location.StoreID = store.StoreID");
    
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(array($StoreID)); //執行sql語法
    $result = $stmt->fetchAll();   //將所有搜尋結果存於result
    echo json_encode($result); //回傳json格式
?>


