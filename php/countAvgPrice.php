<?php
    include "db_conn_ramen.php";
    $StoreID = $_REQUEST["StoreID"];
    
    $query = ("SELECT AVG(Price)
               FROM ramen
               GROUP BY StoreID
               HAVING StoreID =?");
    
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(array($StoreID)); //執行sql語法
    $result = $stmt->fetchAll();   //將所有搜尋結果存於result
    echo json_encode($result); //回傳json格式

?>


