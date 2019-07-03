<?php
include "koneksi.php";
$cari_kd=mysqli_query($koneksi, "SELECT max(id_user)as kode from at_uset");
$tm_cari=mysqli_fetch_array($cari_kd);
$kode=substr($tm_cari['kode'], 1,3);
$tambah=$kode+1;
if ($tambah<10) {
		$id="U00".$tambah;
	}else{
		$id="U0".$tambah;
	}
?>
<div class="masuk">
<form action="submit_register.php" method="post">
	<label>ID USER</label>
	<input class="col_masuk" type="text" name="id_user" value="<?php echo $id; ?>" readonly>
	<label>Saldo</label>
	<input class="col_masuk" type="text" name="saldo" value="0" readonly>
	<label>Username*</label>
	<input class="col_masuk" type="text" name="username" placeholder="Username...">
	<label>Password*</label>
	<input class="col_masuk" type="password" name="password" placeholder="Password...">

	<input class="tombol" type="submit" value="register" name="submit"><br><center class="tengah">
	<a href="index.php" class="register">Cancel</a></center>
</form>