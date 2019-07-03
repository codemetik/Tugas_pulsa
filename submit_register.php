<?php 
include "koneksi.php";

$user = $_POST['id_user'];
$sldo = $_POST['saldo'];
$name = $_POST['username'];
$pwd = md5($_POST['password']);
if (isset($_POST['submit'])) {
	$sql = mysqli_query($koneksi, "INSERT INTO at_uset(id_user, username, password, saldo)VALUES('$user','$name','$pwd','$sldo')");
	print("Register Success");
	header("location:index.php");
}
mysqli_close($koneksi);
?>