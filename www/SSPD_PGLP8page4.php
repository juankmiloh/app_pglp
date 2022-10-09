<?php
require_once "SSPD/constantes.php";

session_start();

$formMain = "/SSPD_PGLP8page1.php";
$salir = HOST . "SSPD/SSPD8logout.php";
$login = "/SSPD_PGLP8pagelogin.php";

if (isset($_SESSION["user_id"])) {
    $idusuario = $_SESSION["user_id"];
}
else
{
    header("Location: " . HOST . $login); 
    exit;
}

require_once "SSPD/ConfigSSPD.php";

$conn->set_charset("utf8"); // change character set to utf8

$sql = "SELECT * FROM usuarios WHERE id = '".$idusuario."'";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_array($result);

$agente = $row['id_agente'];
$year_ind = $row['year_ind'];
$trim_ind = $row['trim_ind'];

$indicador = $_POST["id_indicador"];


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


   
<body bgcolor = "#FFFFFF">
    
    <div id="page" class="site container-fluid">
    
    <div class="site-inner">   
    
        <div id="content" class="site-content">

        <!-- inicio desplegable-->
        <div class="container-fluid" >
            
       
            <div class="sm-span12 smue-clmn sme-dsbl-margin-left sme-dsbl-margin-right"> 
            
                <a>                
                <img src="SSPD/logoSuperservicios.svg" style=" width: 180px; height: 62px; vertical-align: middle; margin-top: 1px; margin-right: 10px;" >
                </a>           
                        
                <p>&nbsp;</p>    
                
                
                <?php
                $sql2 = "SELECT * FROM indicadores WHERE id = '".$indicador."'";
                $result2 = mysqli_query($conn,$sql2);
                $row2 = mysqli_fetch_array($result2);
                $objetivo = $row2["id_objetivo"];
                $agente = $row2["agente"];
                
                $sql3="SELECT * FROM objetivos WHERE id = '".$objetivo."'";
                $result3 = mysqli_query($conn,$sql3);
                $row3 = mysqli_fetch_array($result3);
                
                echo "<h5><b>Empresa: ".$agente."</b></h5><br>";
                echo "<h5><b>Objetivo: ".$row3["nombre"]."</b></h5><br>";
                echo "<h6><b>Indicador ".$row2["tipo"].": ".$row2["nombre"]."</b><br></h6>";
                echo "<h6><b>Periodo: ".$year_ind."</b></h6><br>";
                echo "<h6><b>Trimestre: ".$trim_ind."</b></h6>";
                ?>

                
                <br>
                
                
                <!-- tabla datos basicos-->
                <?php
                $sql = "SELECT * FROM rep_indicadores WHERE id_indicador = '".$indicador."' AND trim_ind = '".$trim_ind."' AND year_ind = '".$year_ind."' ORDER BY id DESC LIMIT 1";
                $result = mysqli_query($conn,$sql);
                $row = mysqli_fetch_array($result);
                
                $id_rep_ind = $row['id'];
                $reg_date = $row['reg_date'];
                $cvar1 = $row['var1'];
                $cvar2 = $row['var2'];
                $cvar3 = $row['var3'];
                $cvar4 = $row['var4'];
                $cvar5 = $row['var5'];
                $usuarios = $row['usuarios'];
                $inversion = $row['inversion'];
                $zona = $row['zona'];

                // Variables
                $sql = "SELECT * FROM variables WHERE id_indicador = '".$indicador."' ORDER BY id ASC";
                $result = mysqli_query($conn,$sql);
                echo "<table class='table table-striped'><tr><th><br>Variables del indicador</th><th></th><th></th></tr>";
                $n=1;
                if ($result->num_rows > 0) 
                {
                    while($row = $result->fetch_assoc()) 
                    {
                        $variable = $row['variable'];
                        if ($n==1){$campo = $cvar1;}
                        else if ($n==2){$campo = $cvar2;}
                        else if ($n==3){$campo = $cvar3;}
                        else if ($n==4){$campo = $cvar4;}
                        else if ($n==5){$campo = $cvar5;}

                        echo "<tr><td></td><td>".$variable."</td><td>".$campo."</td></tr>";
                    $n++;
                    }
                }
                echo "</table>";


                // Otros datos
                echo "<table class='table table-striped'>
                    <tr>
                    <th><br>Concepto</th>
                    <th><br>Informacion reportada</th>
                    </tr>
                    
                    <tr>
                    <td>Fecha de carga</td>
                    <td>".$reg_date ."</td>
                    </tr>
                    <tr>";
                  
                echo "<tr>
                    <td>Usuarios beneficiados</td>
                    <td>".$usuarios ."</td>
                    </tr> 
                    
                    <tr>
                    <td>inversión</td>
                    <td>".$inversion ."</td>
                    </tr>
                    
                    <tr>
                    <td>zona</td>
                    <td>".$zona ."</td>
                    </tr>
                </table>";
                ?>

                <!-- tabla acciones-->
                <?php
                $sql = "SELECT * FROM rep_soportes WHERE id_rep_indicadores = '".$id_rep_ind ."' AND tipo_soporte = '2' ORDER BY id ASC";
                $result = mysqli_query($conn,$sql);
                echo "<table class='table table-striped'><tr><th><br>Acciones</th><th></th></tr>";
                $n=1;
                if ($result->num_rows > 0) 
                {
                    while($row = $result->fetch_assoc()) 
                    {
                        $descripcion = $row['descripcion'];
                        echo "<tr><td> </td><td>".$descripcion."</td></tr>";
                    $n++;
                    }
                }
                echo "</table>";
                ?>

                <!-- tabla beneficios-->
                <?php
                $sql = "SELECT * FROM rep_soportes WHERE id_rep_indicadores = '".$id_rep_ind ."' AND tipo_soporte = '1' ORDER BY id ASC";
                $result = mysqli_query($conn,$sql);
                echo "<table class='table table-striped'><tr><th><br>Beneficios</th><th></th></tr>";
                $n=1;
                if ($result->num_rows > 0) 
                {
                    while($row = $result->fetch_assoc()) 
                    {
                        $descripcion = $row['descripcion'];
                        echo "<tr><td> </td><td>".$descripcion."</td></tr>";
                    $n++;
                    }
                }
                echo "</table>";
                ?>
                
                <!-- tabla dificultades-->
                <?php
                $sql = "SELECT * FROM rep_soportes WHERE id_rep_indicadores = '".$id_rep_ind ."' AND tipo_soporte = '3' ORDER BY id ASC";
                $result = mysqli_query($conn,$sql);
                echo "<table class='table table-striped'><tr><th><br>Dificultades</th><th></th></tr>";
                $n=1;
                if ($result->num_rows > 0) 
                {
                    while($row = $result->fetch_assoc()) 
                    {
                        $descripcion = $row['descripcion'];
                        echo "<tr><td> </td><td>".$descripcion."</td></tr>";
                    $n++;
                    }
                }
                echo "</table>";
                ?>                

                <!-- tabla archivos-->
                <?php
                $sql = "SELECT * FROM rep_archivos WHERE id_indicador = '".$indicador."' AND trim_ind = '".$trim_ind."' AND year_ind = '".$year_ind."' ORDER BY id ASC";
                $result = mysqli_query($conn,$sql);
                echo "<table class='table table-striped'><tr><th><br>Archivos soporte</th><th></th></tr>";
                $n=1;
                if ($result->num_rows > 0) 
                {
                    while($row = $result->fetch_assoc()) 
                    {
                        $descripcion = $row['nombre'];
                        echo "<tr><td> </td><td>".$descripcion."</td></tr>";
                    $n++;
                    }
                }
                echo "</table>";
                ?>                  

            <div>
                
                <button onclick="window.print()" class="btn btn-warning btn-lg" style="color:white">Imprimir</button>

                <form style="text-align: right;" class="mpce-cfa-form  contact_form2 smue-form-5" method = "post" action="<?php echo $formMain; ?>">

                   <input type='hidden' name='agente' value='<?php echo $agente; ?>'>  
                   <input type='hidden' name='password' value='<?php echo $password1; ?>'>                       
                   <input type='hidden' name='year_ind' value='<?php echo $year_ind; ?>'>
                   <input type='hidden' name='trim_ind' value='<?php echo $trim_ind; ?>'>   
                   
                   <button type="submit" class="btn" style='background-color:#190968; color:white'>Regresar</button>
                </form>
            
            </div>
                
                <br><br>

            </div>
        
        </div>
        </div>
        

  
        
    
    </div><!-- .site-inner -->
    
    </div><!-- .site -->


</body>

</html>