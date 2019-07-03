<?php 
session_start();
include "koneksi.php";

$user = $_POST['username'];
$pwd = md5($_POST['password']);

if (!empty($user)&& !empty($pwd)) {
$query = "SELECT * FROM at_admin WHERE username='$user' AND password='$pwd'";
$sql = mysqli_query($koneksi, $query);
if (mysqli_num_rows($sql) >0) {
	$ses = mysqli_fetch_assoc($sql);
	$_SESSION['username']=$user;
	$_SESSION['id_admin']=$ses['id_admin'];
	$_SESSION['password']=$ses['password'];
	$_SESSION['status']="login";
	header("location:admin_dasboard.php");
}else{
	header("location:admin.php?pesan=gagal");
}
}else{
	echo "username dan password salah, Silahkan Diisi kembali";
}
?>