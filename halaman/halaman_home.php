<br>
<br>
<table id="customers">
	<tr>
		<th>ID Trx Barang</th>
		<th>ID User</th>
		<th>ID Barang</th>
		<th>Tgl Trx</th>
		<th>Nama Barang</th>
		<th>Harga Barang</th>
		<th>Nomor</th>
	</tr>
		<?php
		include "koneksi.php";
		$id_user = $_SESSION['id_user'];
		$query = mysqli_query($koneksi, "SELECT * FROM trx_barang WHERE id_user='$id_user'")or die(mysqli_error());
		while($data = mysqli_fetch_array($query)){
		?>
	<tr>
		<td><?php echo $data['id_trx_barang']; ?></td>
		<td><?php echo $data['id_user']; ?></td>
		<td><?php echo $data['id_barang']; ?></td>
		<td><?php echo $data['tgl_trx']; ?></td>
		<td><?php echo $data['nama_barang']; ?></td>
		<td><?php echo $data['harga_trx_barang']; ?></td>
		<td><?php echo $data['Nomor']; ?></td>
	</tr>
<?php } ?>
</table>