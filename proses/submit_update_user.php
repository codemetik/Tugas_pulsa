<?php 
include "../koneksi.php";

$id_user = $_POST['id_user'];
$username = $_POST['nama'];

$sql = mysqli_query($koneksi, "UPDATE at_uset SET username='$username' WHERE id_user = '$id_user'");
if ($sql) {
header("location:../logout.php");
}else{
	echo "data gagal di update";
}
?>