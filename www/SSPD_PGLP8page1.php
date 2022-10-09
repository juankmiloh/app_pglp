<?php
require_once "SSPD/constantes.php";

session_start();

$formInd = "/SSPD_PGLP8page2.php"; //Formulario cargue datos indicador
$formFiles = "/SSPD_PGLP8page3.php"; //Formulario cargue archivos
$formPrint = "/SSPD_PGLP8page4.php"; //Formulario cargue datos indicador
$salir = HOST . "SSPD/SSPD8logout.php";
$login = "/SSPD_PGLP8pagelogin.php";

if (isset($_SESSION["user_id"])) {
    $idusuario = $_SESSION["user_id"];
} else {
    header("Location: " . HOST . $login);
    exit;
}

require_once "SSPD/ConfigSSPD.php";

$conn->set_charset("utf8"); // change character set to utf8

// Toma fecha
date_default_timezone_set('America/Bogota'); // Fija hora zona local
$Fecha = date("Y-m-d H:i:s");

$sql = "SELECT * FROM usuarios WHERE id = '" . $idusuario . "'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);
$agente = $row['id_agente'];
$year_ind = $row['year_ind'];
$trim_ind = $row['trim_ind'];

if (!empty($_GET['status'])) {
    switch ($_GET['status']) {
        case 'succ':
            echo '<script type="text/javascript">alert("Los datos han sido cargados exitosamente.")</script>';
            break;
        case 'err':
            echo '<script type="text/javascript">alert("Sucedió un problema por favor intente de nuevo.")</script>';
            break;
        case 'tolarge':
            echo '<script type="text/javascript">alert("Por favor cargue un archivo de menor tamaño.")</script>';
            break;
        case 'existe':
            echo '<script type="text/javascript">alert("El archivo ya existe. Por favor cargue otro archivo.")</script>';
            break;
    }
}
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Login PGLP</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <style type="text/css">
        body {
            font-family: 'Roboto', sans-serif;
        }
    </style>
</head>

<body bgcolor="#FFFFFF">

    <div id="page">

        <nav class="navbar bg-light">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="SSPD/logoSuperservicios.svg" alt="Bootstrap" width="180" height="62">
                </a>
            </div>
        </nav>

        <div class="container-fluid">

            <div id="content" class="container-fluid">

                <!-- Indicadores-->
                <div class="container-fluid">

                    <div>

                        <p>&nbsp;</p>

                        <?php
                        echo "<h5><b>Empresa: " . $agente . "</b></h5><br>";
                        echo "<h6><b>Periodo: " . $year_ind . "</b></h6>";
                        echo "<h6><b>Trimestre: " . $trim_ind . "</b></h6>";
                        ?>

                        <form action='<?php echo $salir; ?>' method='post' style="float: right;">
                            <!-- <input type='submit' name='submit' value='Salida segura' style='background-color:#190968; border-color:blue; color:white'> -->
                            <button type="submit" class="btn" style='background-color:#190968; color:white'>Salida segura</button>
                        </form>

                        <div>
                            <br><br>
                        </div>

                        <table class="table table-striped">

                            <tr>
                                <th><br>Objetivo</th>
                                <th> </th>
                            </tr>

                            <?php
                            $sql1 = "SELECT * FROM objetivos WHERE agente = '" . $agente . "'";
                            $result = mysqli_query($conn, $sql1);
                            $n = 1;
                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    $objetivo = $row["id"];
                                    $nombreO = $row["nombre"];

                                    echo "<tr><td>" . $nombreO . "</td><td><table class='table table-striped'><tr><th><br>Tipo</th><th><br>Nombre del indicador</th><th></th><th></th><th></th></tr>";

                                    $sql1 = "SELECT * FROM indicadores WHERE id_objetivo = '" . $objetivo . "'";
                                    $result1 = mysqli_query($conn, $sql1);
                                    $n = 1;
                                    if ($result1->num_rows > 0) {
                                        while ($row = $result1->fetch_assoc()) {
                                            $tipo = $row["tipo"];
                                            $nombre = $row["nombre"];
                                            $indicador = $row["id"];
                                            $frecuencia = $row["frecuencia"];

                                            if (($frecuencia == 2) and ($trim_ind == 2)) {
                                                $publicar = 1;
                                            } else if (($frecuencia == 2) and ($trim_ind == 4)) {
                                                $publicar = 1;
                                            } else if (($frecuencia == 3) and ($trim_ind == 4)) {
                                                $publicar = 1;
                                            } else if ($frecuencia == 1) {
                                                $publicar = 1;
                                            } else {
                                                $publicar = 0;
                                            }

                                            $sql1 = "SELECT * FROM rep_indicadores WHERE id_indicador = '" . $indicador . "' AND trim_ind = '" . $trim_ind . "' AND year_ind = '" . $year_ind . "' ORDER BY id DESC LIMIT 1";
                                            $result2 = mysqli_query($conn, $sql1);
                                            if ($result2->num_rows > 0) {
                                                $cargar = 0;
                                            } else {
                                                $cargar = 1;
                                            }

                                            if ($publicar == 1) {
                                                echo "<tr><td>" . $tipo . "</td><td>" . $nombre . "</td>";


                                                echo "<td><form action='" . $formInd . "' method='post' enctype='multipart/form-data'><input type='hidden' name='id_indicador' value='" . $indicador . "'><button type='submit' name='submit' class='btn btn-warning btn-sm' style='color:white'>Datos</button></form></td>";


                                                echo "<td><form action='" . $formFiles . "' method='get' enctype='multipart/form-data'><input type='hidden' name='id_indicador' value='" . $indicador . "'><button type='submit' name='submit' class='btn btn-warning btn-sm' style='color:white'>Soportes</button></form></td>";

                                                if ($cargar == 0) {
                                                    echo "<td><form action='" . $formPrint . "' method='post' enctype='multipart/form-data'><input type='hidden' name='id_indicador' value='" . $indicador . "'><button type='submit' name='submit' class='btn btn-sm' style='background-color:#190968; color:white'>Imprimir</button></form></td>";
                                                } else {
                                                    echo "<td></td>";
                                                }

                                                echo "</tr>";
                                            }

                                            $n++;
                                        }
                                    }

                                    $n++;

                                    echo "</table>";
                                }
                            }

                            ?>


                        </table>


                    </div>

                    <form action='<?php echo $salir; ?>' method='post' style="float: right;">
                        <!-- <input type='submit' name='submit' value='Salida segura' style='background-color:#190968; border-color:blue; color:white'> -->
                        <button type="submit" class="btn" style='background-color:#190968; color:white'>Salida segura</button>
                    </form>

                    <br><br>

                </div>
            </div>





        </div><!-- .site-inner -->

    </div><!-- .site -->



</body>

</html>