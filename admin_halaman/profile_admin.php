<br>
<br>
<table id="customers">
	<tr>
		<th>ID User</th>
		<th>Username</th>
		<th>Password</th>
	</tr>
		<?php
		include "koneksi.php";
		$query = mysqli_query($koneksi, "SELECT * FROM at_admin")or die(mysqli_error());
		while($data = mysqli_fetch_array($query)){
		?>
	<tr>
		<td><?php echo $data['id_admin']; ?></td>
		<td><?php echo $data['username']; ?></td>
		<td><?php echo $data['password']; ?></td>
	</tr>
<?php } ?>
</table>