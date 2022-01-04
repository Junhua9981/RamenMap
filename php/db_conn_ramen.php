<?php 
    $user = 'ramenmap'; //資料庫使用者名稱
    $password = 'ramenmap'; //資料庫的密碼
    try{
        $db = new 
            PDO('mysql:host=10.144.109.180;dbname=RamenMap;charset=utf8',$user,$password);
        //之後若要結束與資料庫的連線，則使用「$db = null;」
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->setAttribute(PDO::ATTR_EMULATE_PREPARES,false); //強制預處理 false
    }catch(PDOException $e){ //若上述程式碼出現錯誤，便會執行以下動作
        Print "ERROR!: " . $e->getMessage();
        die();
    }
?>

<!--  -->