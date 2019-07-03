<?php 
//Identifikasi Request HTTP

//membangun koneksi ke database
$connection = mysqli_connect('localhost','root','','rest_api');
//mengambil method Request
$request_method = $_SERVER["REQUEST_METHOD"];

//metode apa yang digunakan client?
switch ($request_method) {
	case 'GET':
		//metode GET, client hanya ingin meretrieve pproduk dengan product_id tertentu?
		if (!empty($_GET["product_id"])) {
			$product_id = intval($_GET["product_id"]);
			get_products($product_id);
		}//jika tidak dengan product_id, berarti semua produk
		else{
			get_products();
		}
		break;
	case 'POST':
		//metode POST, untuk menambahkan produk baru(Insert)
		insert_product();
		break;
	case 'PUT':
		//metode PUT, client ingin mengupdate produk  tertentu
		$product_id = intval($_GET["product_id"]);
		update_product($product_id);
		break;
	case 'DELETE':
		//metode DELETE, client ingin menghapus produk tertentu
		$product_id = intval($_GET["product_id"]);
		delete_product($product_id);
		break;
	
	default:
		//jika bukan salah satu dari 4 metode di atas 
		header("HTTP/1.0 405 Metode tidak dikenal");
		break;
}


//menambahkan produk baru
function insert_product(){
	global $connection;

	$product_name = $_POST["product_name"];
	$price = $_POST["price"];
	$quantity = $_POST["quantity"];
	$saller = $_POST["saller"];

	$query = "INSERT INTO products SET product_name ='".$product_name."', price = '".$price."', quantity = '".$quantity."', saller = '".$saller."'";
	if (mysqli_query($connection, $query)) {
		$response = array(
			'status' => 1, 
			'status_message' =>'Produk Berhasil Ditambahkan.');
	}
	else{
		$response = array('status' => 0,'status_message' => 'Produk GAGAL Ditambahkan.');
	}
	header('Content-Type: application/json');
	echo json_encode($response);

}


//meminta informasi produk
function get_products($product_id = 0){
	global $connection;

	//query mengambil semua produk
	$query = "SELECT * FROM products";

	//hanya mengambil satu produk sesuai produk_id
	if ($product_id != 0) {
		$query .= " WHERE id ='".$product_id."'LIMIT 1";
	}

	$response = array();
	$result = mysqli_query($connection,$query);

	while ($row = mysqli_fetch_array($result)) {
		$response[] = $row;
	}
	//respon untuk client dalam format JSON
	header('Content-Type: application/json');
	echo json_encode($response);
}


function delete_product($product_id){
	global $connection;
	$query = "DELETE FROM products WHERE id =".$product_id;
	if (mysqli_query($connection, $query)) {
		$response = array(
			'status' => 1,
			'status_message' => 'Produk Berhasil Dihapus.');
	}
	else{
		$response = array(
			'status' => 0,
			'status_message' => 'Produk GAGAL Dihapus.');
	}
}

//mengupdate produk tertentu
function update_product($product_id){
	global $connection;
	parse_str(file_get_contents("php://input"),$post_vars);
	$product_name = $post_vars["product_name"];
	$price = $post_vars["price"];
	$quantity = $post_vars["quantity"];
	$saller = $post_vars["saller"];

	$quary = "UPDATE products SET product_name = '".$product_name."','".$price."','".$quantity."','".$saller."' WHERE id = '".$product_id."'";

	if (mysqli_query($connection, $query)) {
		$response = array(
			'status' => 1, 
			'status_message' => 'Produk Berhasil Diupdate.' );
	}
	else{
		$response = array(
			'status' => 0, 
			'status_message' => 'Produk GAGAL Update');
	}
	header('Content-Type: application/json');
	echo json_encode($response);
}

//tutup koneksi database
mysqli_close($connection);

?>
