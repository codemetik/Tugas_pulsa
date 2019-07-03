<?php
include "koneksi.php";
$cari_kd=mysqli_query($koneksi, "SELECT max(id_admin)as kode from at_admin");
$tm_cari=mysqli_fetch_array($cari_kd);
$kode=substr($tm_cari['kode'], 1,3);
$tambah=$kode+1;
if ($tambah<10) {
		$id="A00".$tambah;
	}else{
		$id="A0".$tambah;
	}
?>
<div class="masuk">
<form action="admin_submit_register.php" method="post">
	<label>ID ADMIN</label>
	<input class="col_masuk" type="text" name="admin" value="<?php echo $id; ?>" readonly>
	<label>Username*</label>
	<input class="col_masuk" type="text" name="username" placeholder="Username...">
	<label>Password*</label>
	<input class="col_masuk" type="password" name="password" placeholder="Password...">

	<input class="tombol" type="submit" value="register" name="register"><br><center class="tengah">
	<a href="admin.php" class="register">Cancel</a></center>
</form>