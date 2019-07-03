<?php 
include "../koneksi.php";

$id_trx = $_POST['id_trx'];
$id_user = $_POST['id_user'];
$tgl = $_POST['tanggal'];
$nama = $_POST['nama'];
$id_barang = $_POST['id_barang'];
$hrg = $_POST['harga'];
$nomor = $_POST['nomor'];

$sql = mysqli_query($koneksi, "INSERT INTO trx_barang(id_trx_barang, id_user, id_barang, tgl_trx, nama_barang, harga_trx_barang, Nomor)VALUES('$id_trx','$id_user','$id_barang','$tgl','$nama','$hrg','$nomor')");
header("location:../dasboard.php?page=home");

?>