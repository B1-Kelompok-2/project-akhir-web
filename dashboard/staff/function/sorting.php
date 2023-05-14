<?php 
session_start();
if (!isset($_POST['submit'])){
    $_SESSION["sorts"] = true;
    $_SESSION["sort"] = "SELECT * FROM order_user;";
    // echo $_SESSION["sort"];
    // echo $_SESSION["sorts"];
    header("Location: ../");
}

if ($_POST['kolom'] != 0){
    $isi = $_POST['kolom'];
    $_SESSION["sort"] = "SELECT * FROM order_user ORDER BY $isi ASC;";
    // header("Location: ../");
    // echo $_SESSION["sort"];
}
 
?>