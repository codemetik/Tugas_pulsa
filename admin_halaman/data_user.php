<br>
<br>
<table id="customers">
	<tr>
		<th>ID User</th>
		<th>Username</th>
		<th>Password</th>
		<th>Saldo</th>
		<th>Pilih</th>
	</tr>
		<?php
		include "koneksi.php";
		$query = mysqli_query($koneksi, "SELECT * FROM at_uset")or die(mysqli_error());
		while($data = mysqli_fetch_array($query)){
		?>
	<tr>
		<td><?php echo $data['id_user']; ?></td>
		<td><?php echo $data['username']; ?></td>
		<td><?php echo $data['password']; ?></td>
		<td><?php echo $data['saldo']; ?></td>
		<td><a href="admin_halaman/hapus_user.php?id=<?php echo $data['id_user']?>" class="tombol">Hapus</a></td>
	</tr>
<?php } ?>
</table>