<?php 
require "../../functions php/konekdb.php";
$menu = query("SELECT * FROM menu");

// tampung di array dulu
$data = array();

// Looping untuk memasukkan data ke dalam array
foreach ($menu as $menu) {
    $data[] = $menu;
}

// Konversi array menjadi JSON
$json = json_encode($data);

// Tampilkan hasil JSON
// echo $json;
?>