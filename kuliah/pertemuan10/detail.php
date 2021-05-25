<?php
require 'functions.php';
// ambil id dari url
$id = $_GET['id'];

$m = query("SELECT * FROM mahasiswa WHERE id=$id");

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Detail Mahasiswa</title>
</head>

<body>
  <h3>Detail Mahasiswa</h3>
  <ul>
    <li><img src="img/<?= $m['gambar']; ?>" alt=""></li>
    <li>NRP : 7408040001</li>
    <li>Nama : Sandhika Galih</li>
    <li>Email : sandhika@unpas.ac.id</li>
    <li>Jurusan : Teknik Informatika</li>
    <li><a href="">ubah</a>|<a href="">hapus</a></li>
    <li><a href="latihan3.php">Kembali ke daftar Mahasiswa</a></li>
  </ul>
</body>

</html>