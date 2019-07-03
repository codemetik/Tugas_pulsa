<br><br><br>
<?php 
include "koneksi.php";
$sql = mysqli_query($koneksi, "SELECT DISTINCT kategori FROM barang");
?>
<form action="" method="post">
	<select name="kategori" class="dropdn">
		<option>--Pilih Kategori--</option>
		<?php if (mysqli_num_rows($sql)>0) { ?>
<?php while ($row = mysqli_fetch_array($sql)){?>
	<option><?php echo $row['kategori'] ?></option>
		<?php 	} ?>
	<?php } ?>
	</select>
	<input type="submit" value="ok" name="ok" class="dropdn">
</form>
<br>
<?php 
if (isset($_POST['ok'])) { 
$kat = $_POST['kategori']; ?>
<center><h1><?php echo $kat; ?></h1></center>
<table id="customers">
	<tr>
		<th>ID Barang</th>
		<th>Nama</th>
		<th>Harga</th>
	</tr>
		<?php
		include "koneksi.php";
		$query = mysqli_query($koneksi, "SELECT id_barang, nama, 
CONCAT('Rp. ', FORMAT(harga_jual,0)) AS Harga_jual FROM barang WHERE kategori LIKE '$kat'")or die(mysqli_error());
		while($data = mysqli_fetch_array($query)){
		?>
	<tr>
		<td><?php echo $data['id_barang']; ?></td>
		<td><?php echo $data['nama']; ?></td>
		<td><?php echo $data['Harga_jual']; ?></td>
	</tr>
<?php } ?>
<?php } ?>
</table>