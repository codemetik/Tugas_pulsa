<!DOCTYPE html>
<html>
<head>
	<title>Halaman Admin</title>
	<link rel="stylesheet" type="text/css" href="css/stylee.css">
</head>
<body>
	<center><h1>Silahkan Login Sebagai Admin</h1></center>
	<?php 
if (isset($_GET['pesan'])) {
	if ($_GET['pesan']== "gagal") {
		echo "Login gagal! Username dan Password salah!";
	}else if($_GET['pesan']=="logout"){
		echo "Anda telah berhasil logout";
	}else if($_GET['pesan']=="belum_login"){
		echo "Anda harus login terlebih dahulu";
	}
}

if (isset($_GET['page'])) {
	$page=$_GET['page'];
	switch ($page) {
		case 'register_admin':
			include "admin_register.php";
			break;
		default:
			echo "<center><h1>404 Page Not Found<h1></center>";
			break;
	}
}else{
	include "admin_login.php";
}
	 ?>
</body>
</html>