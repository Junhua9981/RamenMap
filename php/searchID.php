<?php
    include "db_conn_ramen.php";
    $StoreID = $_REQUEST["StoreID"];

    $query = ("SELECT RamenName, Price, RamenType From ramen WHERE StoreID = ?");
    $stmt = $db->prepare($query); //db為db_conn.php新建的連線物件 
    $error = $stmt->execute(array($StoreID));
    $result = $stmt->fetchAll();  //將所有搜尋結果存於result
    echo json_encode($result);

?>