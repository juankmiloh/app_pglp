<?php
 
session_start();

$formMain = "/SSPD_PGLP8page1.php";
$salir = "http://localhost/app_pglp/SSPD/SSPD8logout.php";
$login = "/SSPD_PGLP8pagelogin.php";

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

// Toma fecha
date_default_timezone_set('America/Bogota'); // Fija hora zona local
$Fecha = date("Y-m-d H:i:s"); 

//echo ($_POST["fecha_pesos"]);

if (isset($_POST["addData"]))
{
    $customerName = $_POST["customerName"];
    
    $trim_ind = $_POST["trim_ind"];
    $year_ind = $_POST["year_ind"];
    $id_indicador = $_POST["id_indicador"];

    //10101010 sin no hay dato para la variable
    if (is_null($_POST["var1"])) {$var1 = -1010;} else{$var1 = $_POST["var1"];};
    if (is_null($_POST["var2"])) {$var2 = -1010;} else{$var2 = $_POST["var2"];};
    if (is_null($_POST["var3"])) {$var3 = -1010;} else{$var3 = $_POST["var3"];};
    if (is_null($_POST["var4"])) {$var4 = -1010;} else{$var4 = $_POST["var4"];};
    if (is_null($_POST["var5"])) {$var5 = -1010;} else{$var5 = $_POST["var5"];};

    $usuarios = $_POST["usuarios"];
    $inversion = $_POST["inversion"];
    
    $fecha_pesos1 = $_POST["fecha_pesos"];
    $time = strtotime($fecha_pesos1);
    $fecha_pesos = date('Y-m-d',$time);        
    
    $zona = $_POST["zona"];

    $sql = "INSERT INTO rep_indicadores (reg_date,trim_ind,year_ind,id_indicador,var1,var2,var3,var4,var5,usuarios,inversion,fecha_pesos,zona,id_usuario) VALUES ('".$Fecha."','".$trim_ind."','".$year_ind."','".$id_indicador."','".$var1."','".$var2."','".$var3."','".$var4."','".$var5."','".$usuarios."','".$inversion."','".$fecha_pesos."','".$zona."','".$idusuario."')";
    
    mysqli_query($conn, $sql);
    $Id = mysqli_insert_id($conn);
    
    //Sube beneficios ($tipo=1)
    for ($a = 0; $a < count($_POST["beneficios"]); $a++)
    {
        $tipo = 1;
        $sql = "INSERT INTO rep_soportes (reg_date,id_rep_indicadores,tipo_soporte,descripcion) VALUES ('".$Fecha."','".$Id."','".$tipo."', '" . $_POST["beneficios"][$a] . "')";
        mysqli_query($conn, $sql);
    }

    //Sube acciones ($tipo=2)
    for ($a = 0; $a < count($_POST["acciones"]); $a++)
    {
        $tipo = 2;
        $sql = "INSERT INTO rep_soportes (reg_date,id_rep_indicadores,tipo_soporte,descripcion) VALUES ('".$Fecha."','".$Id."','".$tipo."', '" . $_POST["acciones"][$a] . "')";
        mysqli_query($conn, $sql);
    }
    
    //Sube dificultades ($tipo=3)
    for ($a = 0; $a < count($_POST["dificultades"]); $a++)
    {
        $tipo = 3;
        $sql = "INSERT INTO rep_soportes (reg_date,id_rep_indicadores,tipo_soporte,descripcion) VALUES ('".$Fecha."','".$Id."','".$tipo."', '" . $_POST["dificultades"][$a] . "')";
        mysqli_query($conn, $sql);
    }        
    

    $qstring = '?status=succ';
    
}

// Redirect to page


header("Location: http://localhost/app_pglp".$formMain.$qstring);
 
?>