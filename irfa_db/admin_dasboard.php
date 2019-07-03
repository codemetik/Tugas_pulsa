<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
	<title>Dasboard</title>
	<link rel="stylesheet" type="text/css" href="css/stylee.css">
	<link rel="stylesheet" type="text/css" href="css/table.css">
</head>
<body>
<div id="sideHeader" class="header">
	<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	<a href="admin_dasboard.php?page=home">Home</a>
	<a href="admin_dasboard.php?page=dompet_user">Trx Dompet User</a>
	<a href="admin_dasboard.php?page=data_user">Data User</a>
	<a href="admin_dasboard.php?page=profile_admin">Profile Admin</a>
	<a href="admin_halaman/logout.php">LogOut</a>
</div>
<nav class="topnav">
  <a href="#" onclick="openNav()">
    <svg width="30" height="30" id="icoOpen">
        <path d="M0,5 30,5" stroke="#000" stroke-width="5"/>
        <path d="M0,14 30,14" stroke="#000" stroke-width="5"/>
        <path d="M0,23 30,23" stroke="#000" stroke-width="5"/>
    </svg>
  </a>
  <p class="profile-top">Selamat Datang <?php echo "<b>".$_SESSION['username']."</b>";?>
  </p>
</nav>
<div id="conten">
	<?php 
		if (isset($_GET['page'])) {
			$page = $_GET['page'];
			switch ($page) {
				case 'home':
					include "admin_home.php";
					break;
				case 'dompet_user':
					include "admin_halaman/trx_dompet_user.php";
					break;
				case 'data_user':
					include "admin_halaman/data_user.php";
					break;
				case 'profile_admin':
					include "admin_halaman/profile_admin.php";
					break;
				case 'hapus':
					include "admin_halaman/hapus_user.php";
					break;
				default:
					echo "<center><h1>Page Not Found</h1></center>";
					break;
			}
		}else{
			include "admin_home.php";
		}
	?>
</div>
<script>
function openNav() {
    document.getElementById("sideHeader").style.width = "250px";
    document.getElementById("conten").style.marginLeft = "250px";
}
 
function closeNav() {
    document.getElementById("sideHeader").style.width = "0";
    document.getElementById("conten").style.marginLeft = "0";
}
</script>
</body>
</html>