<?php
$host = "localhost";
$user = "root";
$pass = "";
$db   = "topsis_baru";

$koneksi = mysqli_connect($host, $user, $pass, $db);
if (!$koneksi) {
  echo "belum tersambung ke database";
} else {
  //echo "Sudah Konek";
}
 ?>
