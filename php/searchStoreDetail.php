<?php
    include "db_conn_ramen.php";
    $StoreID = $_REQUEST["StoreID"]; //前端需要同步

    $query = ("SELECT location.StoreID,location.StoreName, location.MRTStation, location.MRTRoute, store.Tel, store.BusinessHour, store.iframe, location.Address FROM store, location WHERE store.StoreID =? and location.StoreID = store.StoreID ");   
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(array($StoreID)); //執行sql語法
    $result = $stmt->fetchAll();

    echo json_encode($result);
  
?>