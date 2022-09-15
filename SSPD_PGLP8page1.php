<?php

session_start();

$formInd = "/SSPD_PGLP8page2.php"; //Formulario cargue datos indicador
$formFiles = "/SSPD_PGLP8page3.php"; //Formulario cargue archivos
$formPrint = "/SSPD_PGLP8page4.php"; //Formulario cargue datos indicador
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

// Toma fecha
date_default_timezone_set('America/Bogota'); // Fija hora zona local
$Fecha = date("Y-m-d H:i:s"); 

$sql = "SELECT * FROM usuarios WHERE id = '".$idusuario."'";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_array($result);
$agente = $row['id_agente'];
$year_ind = $row['year_ind'];
$trim_ind = $row['trim_ind'];

if(!empty($_GET['status']))
{
    switch($_GET['status'])
    {
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
<html lang="en-US" class="no-js">
<head>
	

</head>

   
<body bgcolor = "#FFFFFF">
    
    <div id="page" class="site container-fluid">
    
    <div class="site-inner">   
    
    
    <header id="masthead" class="site-header" role="banner"> 
    		    
        
        <div class="sm-row-fluid smue-row sme-dsbl-margin-left sme-dsbl-margin-right padding_row header_lower_row">

                <a>                
                <img src="SSPD/logoSuperservicios.svg" style=" width: 180px; height: 62px; vertical-align: middle; margin-top: 1px; margin-right: 10px;" >
                </a>

        </div>
        
    </header><!-- .site-header -->
       
        <div id="content" class="site-content">

 
 
        <!-- Indicadores-->
        <div class="container-fluid" >
            
            <div>
                <br><br>
            </div>

            <div class="sm-span12 smue-clmn sme-dsbl-margin-left sme-dsbl-margin-right">   
                        
                <p>&nbsp;</p> 
                <br><br>
                
                <?php
                echo "<h5><b>Empresa: ".$agente."</b></h5><br></br>";
                echo "<h6><b>Periodo: ".$year_ind."</b></h6><br>";
                echo "<h6><b>Trimestre: ".$trim_ind."</b></h6><br><br>";
                ?>
                
                <form action='<?php echo $salir; ?>' method='post' style="float: right;">
                    <input type='submit' name='submit' value='Salida segura' style='background-color:#190968; border-color:blue; color:white'>
                </form> 

                <table>
                    
                    <tr>
                    <th><br>Objetivo</th>
                    <th> </th>
                    </tr>
        
                    <?php
                    $sql1 = "SELECT * FROM objetivos WHERE agente = '".$agente."'";
                    $result = mysqli_query($conn,$sql1);
                    $n=1;
                    if ($result->num_rows > 0) 
                    {
                        while($row = $result->fetch_assoc()) 
                        {
                            $objetivo =$row["id"];
                            $nombreO =$row["nombre"];
        
                            echo "<tr><td>".$nombreO."</td><td><table><tr><th><br>Tipo</th><th><br>Nombre del indicador</th><th></th><th></th><th></th></tr>";
                            
                                $sql1 = "SELECT * FROM indicadores WHERE id_objetivo = '".$objetivo."'";
                                $result1 = mysqli_query($conn,$sql1);
                                $n=1;
                                if ($result1->num_rows > 0) 
                                {
                                    while($row = $result1->fetch_assoc()) 
                                    {
                                        $tipo =$row["tipo"];
                                        $nombre =$row["nombre"];
                                        $indicador =$row["id"];
                                        $frecuencia =$row["frecuencia"];
                                        
                                       if (($frecuencia == 2) AND ($trim_ind==2))
                                       {$publicar = 1;}
                                       else if (($frecuencia == 2) AND ($trim_ind==4))
                                       {$publicar = 1;}
                                       else if (($frecuencia == 3) AND ($trim_ind==4))
                                       {$publicar = 1;}
                                       else if ($frecuencia == 1)
                                       {$publicar = 1;}
                                       else {$publicar = 0;}
                                       
                                        $sql1 = "SELECT * FROM rep_indicadores WHERE id_indicador = '".$indicador."' AND trim_ind = '".$trim_ind."' AND year_ind = '".$year_ind."' ORDER BY id DESC LIMIT 1";
                                        $result2 = mysqli_query($conn,$sql1);
                                        if ($result2->num_rows > 0) 
                                        {$cargar=0;} else {$cargar=1;}
                                       
                                       if ($publicar == 1)
                                       {
                                        echo "<tr><td>".$tipo."</td><td>".$nombre."</td>";
                                        
                                        
                                        echo "<td><form action='".$formInd."' method='post' enctype='multipart/form-data'><input type='hidden' name='id_indicador' value='".$indicador."'><input type='submit' name='submit' value='Datos'></form></td>";
                                        
                                        
                                        echo "<td><form action='".$formFiles."' method='get' enctype='multipart/form-data'><input type='hidden' name='id_indicador' value='".$indicador."'><input type='submit' name='submit' value='Soportes'></form></td>";
                                        
                                        if ($cargar==0)
                                        {
                                        echo "<td><form action='".$formPrint."' method='post' enctype='multipart/form-data'><input type='hidden' name='id_indicador' value='".$indicador."'><input type='submit' name='submit' value='Imprimir' style='background-color:#190968; border-color:blue; color:white'></form></td>";      }
                                        else {echo "<td></td>";}
                                        
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
                <input type='submit' name='submit' value='Salida segura' style='background-color:#190968; border-color:blue; color:white'>
            </form> 
            
            <br><br>
            
        </div>
        </div>
        

  
        
    
    </div><!-- .site-inner -->
    
    </div><!-- .site -->



</body>

</html>