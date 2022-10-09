<?php
require_once "SSPD/constantes.php";

$usuario = $_POST['usuario'];
$agente = $_POST['agente'];
$year_ind = $_POST['year_ind'];
$trim_ind = $_POST['trim_ind'];
$passcode = $_POST['password']; // Nombre var diferente a la de ConfigSSPD.php
$password_confirmation = $_POST['password_confirmation'];

$uploadOk = 1;

$formcuenta = "/SSPD_PGLP8pagecuenta.php";

require_once "ConfigSSPD.php";

//$conn->set_charset("utf8"); // change character set to utf8


if (empty($_POST["agente"])) {
    $qstring = '?status=agente';
    $uploadOk = 0;
}

/*
if ( ! filter_var($_POST["periodo"], FILTER_VALIDATE_NUMBER)) {
    die("Se requiere un periodo valido");
}

if (! filter_var($_POST["trimestre"], FILTER_VALIDATE_NUMBER)) {
    die("Se requiere un numero de trimestre valido");
}
*/

if ($passcode !== $password_confirmation) {
    $qstring = '?status=pass';
    $uploadOk = 0;
}

if ($uploadOk != 0) 
{
    $password_hash = password_hash($passcode, PASSWORD_DEFAULT);
    
    $sql = "INSERT INTO usuarios (id_agente,passcode,year_ind,trim_ind,usuario) VALUES ('".$agente."','".$password_hash."','".$year_ind."','".$trim_ind."','".$usuario."')";
    
    
    if ($conn->query($sql) === TRUE) {
      $qstring = '?status=succ';
    
    } else {
      $qstring = '?status=err';
    }
    
    $conn->close();
}

// Redirect to the page
header("Location: " . HOST . $formcuenta.$qstring);