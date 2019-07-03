<div class="masuk">
<form action="submit_profile.php" method="post">
	<label>ID User Anda</label>
	<input class="col_masuk" type="text" name="id_user" value="<?php echo $_SESSION['id_user']; ?>" readonly>
	<label>Username</label>
	<input class="col_masuk" type="text" name="nama" value="<?php echo $_SESSION['username']; ?>" readonly>
	<label>password</label>
	<input class="col_masuk" type="password" name="password" value="<?php echo $_SESSION['password']; ?>" readonly>
	<label>Saldo</label>
	<input class="col_masuk" type="text" name="saldo" value="<?php 
include "koneksi.php";
  $id_user = $_SESSION['id_user'];
  $sql = mysqli_query($koneksi, "SELECT CONCAT('Rp. ', FORMAT(saldo,0)) AS saldo FROM at_uset WHERE id_user ='$id_user'");
  while ($data = mysqli_fetch_array($sql)) {
	echo $data['saldo'];} ?>" readonly>

	<center><a href="dasboard.php?page=update_profile" class="tombol">Update</a></center>
</form>