<?php 
include "../koneksi.php";

$id = $_GET['id'];
$sql = mysqli_query($koneksi, "DELETE FROM at_uset WHERE id_user ='".$id."'");

header("location:../admin_dasboard.php?page=data_user");
?>