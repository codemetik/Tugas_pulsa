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
	<a href="dasboard.php?page=home">Home</a>
	<a href="dasboard.php?page=dompet">Dompet</a>
	<a href="dasboard.php?page=transaksi">Transaksi</a>
	<a href="dasboard.php?page=barang">Data Barang</a>
	<a href="dasboard.php?page=profile">Profile</a>
	<a href="logout.php">LogOut</a>
</div>
<nav class="topnav">
  <a href="#" onclick="openNav()">
    <svg width="30" height="30" id="icoOpen">
        <path d="M0,5 30,5" stroke="#000" stroke-width="5"/>
        <path d="M0,14 30,14" stroke="#000" stroke-width="5"/>
        <path d="M0,23 30,23" stroke="#000" stroke-width="5"/>
    </svg>
  </a>
  <p class="profile-top">Selamat Datang <?php echo "<b>".$_SESSION['username']."</b>";?><br>Saldo : Rp. <?php 
  include "koneksi.php";
  $id_user = $_SESSION['id_user'];
  $sql = mysqli_query($koneksi, "SELECT CONCAT(FORMAT(saldo,0)) AS saldo FROM at_uset WHERE id_user ='$id_user'");
  while ($data = mysqli_fetch_array($sql)) {
  echo "<b>".$data['saldo']."</b>";
}
  ?>

  </p>
</nav>
<div id="conten">
	<?php 
		if (isset($_GET['page'])) {
			$page = $_GET['page'];
			switch ($page) {
				case 'home':
					include "halaman/halaman_home.php";
					break;
				case 'dompet':
					include "halaman/dompet.php";
					break;
				case 'transaksi':
					include "halaman/transaksi.php";
					break;
				case 'barang':
					include "halaman/data_barang.php";
					break;
				case 'profile':
					include "halaman/profile.php";
					break;
				case 'deposit':
					include "halaman/deposit.php";
					break;
				case 'update_profile':
					include "halaman/update_profile.php";
					break;
				default:
					echo "<center><h1>Page Not Found</h1></center>";
					break;
			}
		}else{
			include "halaman/halaman_home.php";
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