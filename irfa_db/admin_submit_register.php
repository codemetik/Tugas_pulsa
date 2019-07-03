<?php 
include "koneksi.php";

$user = $_POST['admin'];
$name = $_POST['username'];
$pwd = md5($_POST['password']);
if (isset($_POST['register'])) {
	$sql = mysqli_query($koneksi, "INSERT INTO at_admin(id_admin, username, password)VALUES('$user','$name','$pwd')");
	print("Register Success");
	header("location:admin.php");
}
mysqli_close($koneksi);
?>