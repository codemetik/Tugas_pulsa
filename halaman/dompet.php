<div class="masuk">
	<center><h1>Dompet Ku</h1></center>
<form action="dasboard.php?page=deposit" method="post">
	<label>ID USER</label>
	<input class="col_masuk" type="text" name="id_user" value="<?php echo $_SESSION['id_user']; ?>" readonly>
	<label>Saldo</label>
	<input class="col_masuk" type="text" name="saldo" value="<?php 
include "koneksi.php";
  $id_user = $_SESSION['id_user'];
  $sql = mysqli_query($koneksi, "SELECT saldo FROM at_uset WHERE id_user ='$id_user'");
  while ($data = mysqli_fetch_array($sql)) {
	echo $data['saldo'];} ?>" readonly>

	<input class="tombol" type="submit" value="Deposit">
</form>
</div>
<br>
<br>
<table id="customers">
	<tr>
		<th>ID Trx Saldo</th>
		<th>ID User</th>
		<th>Tanggal</th>
		<th>Deposit</th>
	</tr>
		<?php
		include "koneksi.php";
		$id_user = $_SESSION['id_user'];
		$query = mysqli_query($koneksi, "SELECT * FROM trx WHERE id_user='$id_user'")or die(mysqli_error());
		while($data = mysqli_fetch_array($query)){
		?>
	<tr>
		<td><?php echo $data['id_trx']; ?></td>
		<td><?php echo $data['id_user']; ?></td>
		<td><?php echo $data['tgl']; ?></td>
		<td><?php echo $data['saldo_masuk']; ?></td>
	</tr>
<?php } ?>
</table>