<?php
include "koneksi.php";
$cari_kd=mysqli_query($koneksi, "SELECT max(id_trx)as kode from trx");
$tm_cari=mysqli_fetch_array($cari_kd);
$kode=substr($tm_cari['kode'], 1,3);
$tambah=$kode+1;
if ($tambah<10) {
		$id="T00".$tambah;
	}else{
		$id="T0".$tambah;
	}
?>
<div class="masuk">
<form action="proses/submit_deposit.php" method="post">
	<label>ID TRX Saldo</label>
	<input class="col_masuk" type="text" name="id_trx" value="<?php echo $id; ?>" readonly>
	<label>ID USER</label>
	<input class="col_masuk" type="text" name="id_user" value="<?php echo $_SESSION['id_user']; ?>" readonly>
	<label>Tanggal</label>
	<input class="col_masuk" type="text" name="tgl" value="<?php echo date('d - M - Y'); ?>" readonly>
	<label>Tambah Saldo Anda</label>
	<input class="col_masuk" type="text" name="saldo">

	<input class="tombol" type="submit" value="Deposit" name="deposit"><br><br>
	<center><a href="dasboard.php?page=dompet" class="tombol">Cancel</a></center>
</form>