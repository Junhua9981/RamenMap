<?php
    include "db_conn_ramen.php";

    $StoreName = $_REQUEST["StoreName"];//前端需要同步 ex:"testStore"

    $query = ("SELECT delCount FROM store WHERE StoreName =?");
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(array($StoreName)); //執行sql語法
    $result = $stmt->fetchAll();
    $delCount = $result[0][0] +1;


    if($result[0][0]+1 == $delCount){
        $status[0] = "success";
        //echo json_encode($status);
    }
    else{
        $status[0] = "fail";
        //echo json_encode($status);
    }

    $query = ("UPDATE store SET delCount=? WHERE StoreName = ?");   
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(array($delCount,$StoreName)); //執行sql語法

    $query = ("SELECT StoreID FROM store WHERE StoreName =?");
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(array($StoreName)); //執行sql語法
    $result = $stmt->fetchAll();
    $StoreID = $result[0][0];

    if($delCount>=19){
        $query = ("DELETE FROM store WHERE StoreName = ?");
        $stmt = $stmt = $db->prepare($query);
        $error = $stmt->execute(array($StoreName)); //執行sql語法
        $result = $stmt->fetchAll();

        $query = ("DELETE FROM location WHERE StoreID = ?");
        $stmt = $stmt = $db->prepare($query);
        $error = $stmt->execute(array($StoreID)); //執行sql語法
        $result = $stmt->fetchAll();
    }

    $query = ("SELECT StoreName FROM store WHERE StoreName = ?");
    $stmt = $db->prepare($query);    //db為db_conn_sofware.php新建的連線物件 
    $error = $stmt->execute(array($StoreName)); //執行sql語法
    $result = $stmt->fetchAll();
    $checkexit = $result[0][0];

    if($checkexit == $StoreName){
        $status[1] = "Delete failure";
        //echo json_encode($status[0][1]);
    }
    else{
        $status[1] = "Delete successfully!";
        //echo json_encode($status[0][1]);
    }
    echo json_encode($status);
?>