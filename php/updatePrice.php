<?php
    include "db_conn_ramen.php";
    $StoreID = $_REQUEST["StoreID"];
    $RamenName = $_REQUEST["RamenName"];
    $Price = $_REQUEST["Price"];

    //先將原始價錢抓下來
    $query = ("SELECT Price FROM ramen WHERE RamenName =? and StoreID = ?");
    $stmt = $db->prepare($query); //db為db_conn.php新建的連線物件 
    $error = $stmt->execute(array($RamenName, $StoreID));
    $result = $stmt->fetchAll();  //將所有搜尋結果存於result
    $result = $result[0][0];//原始拉麵價格
    //echo json_encode($result);

    //更改拉麵價格
    $query = ("UPDATE ramen SET Price = ? WHERE StoreID = ? and RamenName = ?");
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(array($Price, $StoreID, $RamenName)); //執行sql語法
    
    //抓新的拉麵價格
    $query = ("SELECT Price FROM ramen WHERE RamenName =? and StoreID = ?");
    $stmt = $db->prepare($query); //db為db_conn.php新建的連線物件 
    $error = $stmt->execute(array($RamenName, $StoreID));
    $newprice = $stmt->fetchAll();  //將所有搜尋結果存於result
    $newprice = $newprice[0][0]; //新的拉麵價格
    //echo json_encode($newprice);
    
    //判斷是否有更改成功
    if($result == $newprice){
        echo json_encode("update failure");
    }
    else{
        echo json_encode("update successfully!");
    }
?>
