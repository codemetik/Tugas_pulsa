<br>
<br>
<table id="customers">
	<tr>
		<th>ID Trx</th>
		<th>ID User</th>
		<th>Tanggal</th>
		<th>Saldo Masuk</th>
	</tr>
		<?php
		include "koneksi.php";
		$query = mysqli_query($koneksi, "SELECT * FROM trx")or die(mysqli_error());
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