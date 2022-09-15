<?php


session_start();

$formMain = "/SSPD_PGLP8page1.php";
$salir = "https://darinfraestructura.com/SSPD/SSPD8logout.php";
$login = "/SSPD_PGLP8pagelogin.php";

if (isset($_SESSION["user_id"])) {
    $idusuario = $_SESSION["user_id"];
}
else
{
    header("Location: https://darinfraestructura.com".$login); 
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
<html lang="en-US" class="no-js">
<head>
	
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
                
                echo "<h5><b>Empresa: ".$agente."</b></h5><br></br>";
                echo "<h5><b>Objetivo: ".$row3["nombre"]."</b></h5><br></br>";
                echo "<h6><b>Indicador ".$row2["tipo"].": ".$row2["nombre"]."</b><br><br></h6>";
                echo "<h6><b>Periodo: ".$year_ind."</b></h6><br>";
                echo "<h6><b>Trimestre: ".$trim_ind."</b></h6><br><br>";
                ?>

                
                <br><br>
                
                
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
                echo "<table><tr><th><br>Variables del indicador</th><th></th><th></th></tr>";
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
                echo "<table>
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
                    <td>inversi贸n</td>
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
                echo "<table><tr><th><br>Acciones</th><th></th></tr>";
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
                echo "<table><tr><th><br>Beneficios</th><th></th></tr>";
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
                echo "<table><tr><th><br>Dificultades</th><th></th></tr>";
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
                echo "<table><tr><th><br>Archivos soporte</th><th></th></tr>";
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
                
                <button onclick="window.print()" style="background-color:#190968; border-color:blue; color:white">Imprimir</button>

                <form class="mpce-cfa-form  contact_form2 smue-form-5" method = "post" action="<?php echo $formMain; ?>">

                   <input type='hidden' name='agente' value='<?php echo $agente; ?>'>  
                   <input type='hidden' name='password' value='<?php echo $password1; ?>'>                       
                   <input type='hidden' name='year_ind' value='<?php echo $year_ind; ?>'>
                   <input type='hidden' name='trim_ind' value='<?php echo $trim_ind; ?>'>   
                   
                    <input type="submit" name="addData1" value="Regresar" style="float: right;">
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