<?php 

$db_root = mysqli_connect('localhost','root','','coretrpl');
$db_users = $db_root = mysqli_connect('localhost','root','','coretrpl');

function query($query){
	$result = mysqli_query($conn, $query);
	$rows = [];
	while( $row = mysqli_fetch_assoc($result)){
		$rows[]= $row;
	}
	return $rows;
}

function register($data){
	global $db_users;

	$username = $data['usernamereg'];
  	$email = $data['emailreg'];
  	$password = $data['passwordreg'];
  	$password2 = $data['passwordreg2'];
  	$nomorhp = $data['nomorhp'];
  	$alamat = $data['alamat'];

  	$result = mysqli_query($db_users,"SELECT username FROM users WHERE username ='$username'");
  	if(mysqli_fetch_assoc($result)){
  		echo "
  			<script>
  				alert('username sudah terdaftar!');
  			</script>
  		";
  		return 0;
  	}

  	if( $password2 != $password){
  		echo" 
  			<script>
  				alert('Password konfirmasi tidak sama');
  			</script>
  		";
  		return 0;
  	}

  	$password = password_hash($password, PASSWORD_DEFAULT);
  	$query = "INSERT INTO users
              VALUES
              ('','$username','$email','$password','$nomorhp','$alamat')
            ";
  	mysqli_query($db_users,$query);
  	
  	$_SESSION["login"] = true;
  	$_SESSION["user"] = $username;

  	return mysqli_affected_rows($db_users); 	
}

function login($data){
	global $db_users;

	$username = $data['username'];
  	$password = $data['password'];
  	
  	$result = mysqli_query($db_users,"SELECT * FROM users WHERE username ='$username'");
  	var_dump(mysqli_num_rows($result));
  	if( mysqli_num_rows($result) == 1){
  		$row = mysqli_fetch_assoc($result);
  		//var_dump($row);
  		if(password_verify($password,$row['password'])){
  			$_SESSION["login"] = true;
  			$_SESSION["user"] = $username;
  			return 1;
  		}
  	}
  	return 0;
}
function logout(){
	session_destroy();
	session_unset();
}
function uploadgambar(){
  $namaFile = $_FILES['image']['name'];
  $ukuranFile = $_FILES['image']['size'];
  $error = $_FILES['image']['error'];
  $tmpName = $_FILES['image']['tmp_name'];
  if($error){
    return false;
  }
  $ekstensiGambarValid = ['jpg','jpeg','png'];
  $ekstensiGambar = explode('.', $namaFile);
  $ekstensiGambar =strtolower(end($ekstensiGambar));
  if(!in_array($ekstensiGambar, $ekstensiGambarValid)){
    echo "<script>
            alert('Upload gambar!');
          </script>
    ";
  }

  $namaFileBaru = uniqid();
  $namaFileBaru .= '.';
  $namaFileBaru .= $ekstensiGambar;
  move_uploaded_file($tmpName, 'images/'.$namaFileBaru);
  return $namaFileBaru;
}
function tambah($data){
  global $db_root;

  $productname = $data['product-name'];
  $productbio = $data['product-bio'];
  $productprice = $data['product-price'];
  $productquantitys = $data['product-quantity-s'];
  $productquantitym = $data['product-quantity-m'];
  $productquantityl = $data['product-quantity-l'];
  $productquantityxl = $data['product-quantity-xl'];
  $gambar = uploadgambar();

  $query = "INSERT INTO products
              VALUES
              ('','$productname','$productbio','$productprice','$productquantitys','$productquantitym','productquantityl','productquantityxl','$gambar')
            ";
  $result = mysqli_query($db_root,$query);
  if(mysqli_affected_rows($result)){
    return 1;
  }
  else return 0;
}
?>