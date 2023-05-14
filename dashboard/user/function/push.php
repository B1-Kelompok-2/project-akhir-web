<?php
// Terima data dari permintaan AJAX
// $data1 = $_POST['data1'];
$data = $_POST['data'];
// var_dump ($dataLogin);
// Lakukan koneksi ke database
$host = 'localhost';
$user = 'root';
$password = '';
$dbname = 'pa_web';
$conn = mysqli_connect($host, $user, $password, $dbname);

// Looping melalui data dan masukkan ke database
foreach ($data as $item) {
  $user = mysqli_real_escape_string($conn, $item['user']); // Hindari SQL injection
  $gambar = mysqli_real_escape_string($conn, $item['image']); // Hindari SQL injection
  $orderan = mysqli_real_escape_string($conn, $item['name']); // Hindari SQL injection
  $status = mysqli_real_escape_string($conn, 'Unverified'); // Hindari SQL injection
  $hargaSatuan = mysqli_real_escape_string($conn, $item['price']); // Hindari SQL injection
  $kuantitas = mysqli_real_escape_string($conn, $item['quantity']); // Hindari SQL injection
  $totalHarga = mysqli_real_escape_string($conn, $item['total']); // Hindari SQL injection

  $intHargaSatuan = intval($hargaSatuan);
  $intKuantitas = intval($kuantitas);  
  $intTotal = intval($totalHarga);

  $query = "INSERT INTO order_user (user, image, orderan, statusOrder, hargaSatuan, kuantitas, totalHarga) VALUES ('$user', '$gambar', '$orderan', '$status', $intHargaSatuan, $intKuantitas, $intTotal);";
  
  // var_dump ($intTotal);

  mysqli_query($conn, $query);
}


// Tutup koneksi ke database
mysqli_close($conn);

// Kirim respon ke klien

?>