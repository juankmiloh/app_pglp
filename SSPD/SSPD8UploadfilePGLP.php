<?php 

session_start();

$formFiles = "/SSPD_PGLP8page3.php";
$salir = "http://localhost/app_pglp/SSPD/SSPD8logout.php";
$login = "/SSPD_PGLP8pagelogin.php";
$target_dirAire = "Archivos/Aire/";
$target_dirAfinia = "Archivos/Afinia/";

if (isset($_SESSION["user_id"])) {
    $idusuario = $_SESSION["user_id"];
}
else
{
    header("Location: http://localhost/app_pglp".$login);
    exit;
}

require_once "ConfigSSPD.php";
$conn->set_charset("utf8"); // change character set to utf8

$sql = "SELECT * FROM usuarios WHERE id = '".$idusuario."'";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_array($result);

$agente = $row['id_agente'];
$year_ind = $row['year_ind'];
$trim_ind = $row['trim_ind'];


// Carpeta segun agente
if ($agente == "Air-e"){$target_dir = $target_dirAire;}
elseif ($agente == "Afinia"){$target_dir = $target_dirAfinia;}


$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$FileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

$id_indicador = $_POST["id_indicador"];
$id_archivo = $_POST["id_archivo"];
$nombre = $_FILES["fileToUpload"]["name"];
$observaciones = $_POST["observaciones"];

$archivo = "http://localhost/app_pglp/SSPD/".$target_file;

// Toma fecha
date_default_timezone_set('America/Bogota'); // Fija hora zona local
$Fecha = date("Y-m-d H:i:s"); 

// Check if file already exists
if (file_exists($target_file)) {
  $qstring = '?status=existe';
  $uploadOk = 0;
}

if ($_FILES['fileToUpload']['size'] == 0) {
  $qstring = '?status=vacio';
  $uploadOk = 0;
}

// Check file size max 200MB
if ($_FILES["fileToUpload"]["size"] > 200000000) {
  $qstring = '?status=tolarge';
  $uploadOk = 0;
}

/*
// Allow certain file formats
if($FileType != "jpg" && $FileType != "png" && $FileType != "jpeg"
&& $FileType != "gif" ) {
  echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
  $uploadOk = 0;
}
*/

// Check if $uploadOk is set to 0 by an error
if ($uploadOk != 0) 
{
  if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) 
  {

    $sql = "INSERT INTO rep_archivos (reg_date,trim_ind,year_ind,id_indicador,id_archivo,nombre,ruta,observaciones,id_usuario) VALUES ('".$Fecha."','".$trim_ind."','".$year_ind."','".$id_indicador."','".$id_archivo."','".$nombre."','".$archivo."','".$observaciones."','".$idusuario."')";
    
    mysqli_query($conn, $sql);
    
    $qstring = '?status=succ';
  } 
  else 
  {
    $qstring = '?status=err';
  }
}

$msg = $qstring."&id_indicador=".$id_indicador;

// Redirect to the page
header("Location: http://localhost/app_pglp".$formFiles.$msg);

?>