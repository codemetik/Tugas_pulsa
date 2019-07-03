<center><h1>Silahkan Update Profile Anda</h1></center>
<div class="masuk">
	<?php 
include "koneksi.php";
$id_user = $_SESSION['id_user'];
$sql = mysqli_query($koneksi, "SELECT * FROM at_uset WHERE id_user='$id_user'");
while ($data = mysqli_fetch_array($sql)) {
?>
<form action="proses/submit_update_user.php" method="post">
	<label>ID User Anda</label>
	<input class="col_masuk" type="text" name="id_user" value="<?php echo $data['id_user']; ?>" readonly>
	<label>Username</label>
	<input class="col_masuk" type="text" name="nama" value="<?php echo $data['username']; ?>">
	<label>password</label>
	<input class="col_masuk" type="password" name="password" value="<?php echo $data['password']; ?>" readonly>
	<label>Saldo</label>
	<input class="col_masuk" type="text" name="saldo" value="<?php echo $data['saldo']?>" readonly>

	<input class="tombol" type="submit" value="Update"><br><br>
	<center><a class="tombol" href="dasboard.php?page=profile">Cencel</a></center>
</form>
<?php } ?>