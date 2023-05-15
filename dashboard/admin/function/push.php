<?php
$data = $_POST['data'];

$host = 'localhost';
$user = 'root';
$password = '';
$dbname = 'pa_web';
$conn = mysqli_connect($host, $user, $password, $dbname);

foreach ($data as $item) {
    $judul = mysqli_real_escape_string($conn, $item['judulMenu']); 
    $harga = mysqli_real_escape_string($conn, $item['hargaMenu']); 
    $gambar = mysqli_real_escape_string($conn, $item['gambarMenu']); 
    
    $intHarga = intval($harga);

    $query = "INSERT INTO menu VALUES ('','$judul','$gambar', $intHarga);";
    // var_dump($judul);
    // var_dump($intHarga);
    // var_dump($menu);
    mysqli_query($conn, $query);
}
mysqli_close($conn);
?>