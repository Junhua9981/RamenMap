<?php 
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods:*');
    header('Content-type: application/json');
    
    $user = 'id18244249_root'; //資料庫使用者名稱
    $password = 'by(KN+\OuR6yGB=Y'; //資料庫的密碼
    try{
        $db = new 
            PDO('mysql:host=localhost;dbname=id18244249_ramenmap;charset=utf8',$user,$password);
        //之後若要結束與資料庫的連線，則使用「$db = null;」
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->setAttribute(PDO::ATTR_EMULATE_PREPARES,false); //強制預處理 false
    }catch(PDOException $e){ //若上述程式碼出現錯誤，便會執行以下動作
        Print "ERROR!: " . $e->getMessage();
        die();
    }
?>