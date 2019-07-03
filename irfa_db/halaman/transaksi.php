<?php
include "koneksi.php";
$cari_kd=mysqli_query($koneksi, "SELECT max(id_trx_barang)as kode from trx_barang");
$tm_cari=mysqli_fetch_array($cari_kd);
$kode=substr($tm_cari['kode'], 1,6);
$tambah=$kode+1;
if ($tambah<10) {
		$id="T".$tambah;
	}else{
		$id="T".$tambah;
	}
?>
<div class="masuk">
<form action="proses/submit_trx.php" method="post">
	<label>ID Transaksi</label>
	<input class="col_masuk" type="text" name="id_trx" value="<?php echo $id; ?>" readonly>
	<label hidden>ID User</label>
	<input class="col_masuk" type="text" name="id_user" value="<?php echo $_SESSION['id_user']?>" hidden>
	<label>Tanggal</label>
	<input class="col_masuk" type="text" name="tanggal" value="<?php echo date('d - M - Y'); ?>" readonly>
	<label>Nama Produk</label>
	<?php 
include "koneksi.php";
$sql = mysqli_query($koneksi, "SELECT * FROM barang order by nama asc");
?>
	<select class="col_masuk" type="text" name="nama" id="nama" onchange="changeValue(this.value)" required>
		<option value="">--Pilih Nama Produk--</option>
<?php 
$result = mysqli_query($koneksi, "SELECT * FROM barang");
$jsArray = "var prdName = new Array();\n";
while ($row = mysqli_fetch_array($result)){?>
	<option name="nama" value="<?php echo $row['nama']; ?>"><?php echo $row['nama'] ?></option>
		<?php	
$jsArray .="prdName['".$row['nama']."']={harga_jual:'".addslashes($row['harga_jual'])."', id_barang :'".addslashes($row['id_barang'])."'}\n";
	} ?>
	</select>
	<label>ID Barang</label>
	<input class="col_masuk" type="text" name="id_barang" id="id_barang" readonly>
	<label>Harga</label>
	<input class="col_masuk" type="text" name="harga" id="harga_jual" readonly>
	<label>Nomor</label>
	<input class="col_masuk" type="text" name="nomor" placeholder="isikan nomor yg akan di isi">

	<input class="tombol" type="submit" name="submit" value="ORDER"><br><center class="tengah">
	<a href="dasboard.php?page=home" class="register">Cancel</a></center>
</form>
<script type="text/javascript">
<?php echo $jsArray; ?>
	function changeValue(id) {
		document.getElementById('harga_jual').value = prdName[id].harga_jual;
		document.getElementById('id_barang').value = prdName[id].id_barang;
	};
</script>