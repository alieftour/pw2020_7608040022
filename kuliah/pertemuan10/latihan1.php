<?php
// koneksi ke DB & pilih Database
$conn = mysqli_connect('localhost', 'root', '', 'pw_7608040022');

// Query isi tabel mahasiswa
$result = mysqli_query($conn, "SELECT * FROM mahasiswa");
// var_dump($result);

// ubah data ke dalam array
$rows = [];
while ($row = mysqli_fetch_assoc($result)) {
  $rows[] = $row;
}
// var_dump($rows);

// tampung ke variabel mahasiswa
$mahasiswa = $rows;
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Daftar Mahasiswa</title>
</head>

<body>
  <h3>Daftar Mahasiswa</h3>

  <table border="1" cellpadding="10" cellspacing="0">
    <tr>
      <th>#</th>
      <th>Gambar</th>
      <th>NRP</th>
      <th>Nama</th>
      <th>Email</th>
      <th>Jurusan</th>
      <th>Aksi</th>
    </tr>


    <?php $i = 1;
    foreach ($mahasiswa as $mhs) : ?>

      <tr>
        <td><?= $i++; ?></td>
        <td><img src="img/<?= $mhs["gambar"] ?>" alt=""></td>
        <td><?= $mhs["nrp"] ?></td>
        <td><?= $mhs["nama"]; ?></td>
        <td><?= $mhs["email"]; ?></td>
        <td><?= $mhs["jurusan"]; ?></td>
        <td>
          <a href="">ubah</a> | <a href="">hapus</a>
        </td>
      </tr>
    <?php endforeach; ?>
  </table>
</body>

</html>