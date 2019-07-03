<?php 
include "../koneksi.php";

$id_trx = $_POST['id_trx'];
$id_usr = $_POST['id_user'];
$tgl = $_POST['tgl'];
$sal = $_POST['saldo'];

$sql = mysqli_query($koneksi, "INSERT INTO trx(id_trx, id_user, tgl, saldo_masuk, saldo_keluar) VALUES('$id_trx','$id_usr','$tgl','$sal','')");

header("location:../dasboard.php?page=dompet");

?>