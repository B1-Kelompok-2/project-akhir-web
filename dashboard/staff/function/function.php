<?php 
session_start();
$keyword = $_POST["keyword"];

// $perintah = "SELECT * FROM order_user WHERE 
//             -- id LIKE '%$keyword%' OR
//             user LIKE '%$keyword%' OR
//             -- orderan LIKE '%$keyword%' OR
//             -- status LIKE '%$keyword%' OR
//             -- hargaSatuan LIKE '%$keyword%' OR
//             -- kuantitas LIKE '%$keyword%' OR
//             -- totalHarga LIKE '%$keyword%'
//             ;";
if ()
$_SESSION["sort"] = "SELECT * FROM order_user WHERE 
-- id LIKE '%$keyword%' OR
user LIKE '%$keyword%' OR
-- orderan LIKE '%$keyword%' OR
-- status LIKE '%$keyword%' OR
-- hargaSatuan LIKE '%$keyword%' OR
-- kuantitas LIKE '%$keyword%' OR
-- totalHarga LIKE '%$keyword%'
;";
header("Location: ../")
?>