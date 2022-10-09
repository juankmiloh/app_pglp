<?php
require_once "SSPD/constantes.php";

session_start();

$formMain = "/SSPD_PGLP8page1.php";
$formUpFiles = "/SSPD/SSPD8UploadfilePGLP.php";
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

$indicador = $_GET["id_indicador"];

// Get status message
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
             echo '<script type="text/javascript">alert("Por favor cargue un archivo de menor tamaño (<=200MB).")</script>';             
            break;
        case 'existe':
             echo '<script type="text/javascript">alert("El archivo ya existe. Por favor cargue otro archivo.")</script>';             
            break;
        case 'vacio':
             echo '<script type="text/javascript">alert("Por favor elija un archivo para cargar.")</script>';             
            break;
    }
}

$sql2 = "SELECT * FROM indicadores WHERE id = '".$indicador."'";
$result2 = mysqli_query($conn,$sql2);
$row2 = mysqli_fetch_array($result2);
$agente = $row2["agente"];

$sql2 = "SELECT * FROM usuarios WHERE id_agente = '".$agente."'";
$result2 = mysqli_query($conn,$sql2);
$row2 = mysqli_fetch_array($result2);
$password1 = $row2["passcode"];
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
    
    
    <header id="masthead" class="site-header" role="banner"> 
    		    
        
        <div class="sm-row-fluid smue-row sme-dsbl-margin-left sme-dsbl-margin-right padding_row header_lower_row">

                <a>                
                <img src="SSPD/logoSuperservicios.svg" style=" width: 180px; height: 62px; vertical-align: middle; margin-top: 1px; margin-right: 10px;" >
                </a>

        </div>
        
    </header><!-- .site-header -->
       
    <div id="content" class="site-content">

 
 
        <!-- inicio desplegable-->
        <div class="container-fluid" >
            
            <div>
               <br><br>
            </div>
       
            <div class="sm-span12 smue-clmn sme-dsbl-margin-left sme-dsbl-margin-right">   
                                        
                <?php
                $sql2 = "SELECT * FROM indicadores WHERE id = '".$indicador."'";
                $result2 = mysqli_query($conn,$sql2);
                $row2 = mysqli_fetch_array($result2);
                $objetivo = $row2["id_objetivo"];
                
                $sql3="SELECT * FROM objetivos WHERE id = '".$objetivo."'";
                $result3 = mysqli_query($conn,$sql3);
                $row3 = mysqli_fetch_array($result3);
                
                echo "<h5><b>Objetivo: ".$row3["nombre"]."</b></h5><br>";
                echo "<h6><b>Indicador ".$row2["tipo"].": ".$row2["nombre"]."</b></h6>";
                ?>
    
                <br>
                

                <!-- Forms archivos-->
    
                <div style="border:2px; border-style:solid; border-color:#B6B2B1; padding: 1em;" > 
    
                    <form  action = '<?php echo $formUpFiles; ?>' method='post' enctype='multipart/form-data' onSubmit="return confirm('¿Esta seguro de cargar el archivo?');">
                        Archivo:
                        <input type='file' name='fileToUpload' id='fileToUpload' class="form-control">
                        <input type='hidden' id='indicador_' name='id_indicador' value=<?php echo $indicador; ?> >
                        <input type='hidden' id='year_' name='year_ind' value=<?php echo $year_ind; ?> >
                        <input type='hidden' id='trim_' name='trim_ind' value=<?php echo $trim_ind; ?>>
                        
                        <div> 
                            <br>
                            <label style="color:#B42304; font-size: 10px">
                            * El archivo debe tener un tamaño máximo de 200MB.
                            </label>
                        </div>
                        <br>
                        
                        <div>        
                            <?php
                                    $sql1 = "SELECT * FROM archivos_soporte WHERE id_indicador = '".$indicador."'";
                                    $result1 = mysqli_query($conn,$sql1);
                                    echo "<label for='nombre'>Tema:</label><select id='nombre' name='id_archivo' class='form-control'>";
                                    $n=1;
                                    if ($result1->num_rows > 0) 
                                    {
                                    while($row = $result1->fetch_assoc()) 
                                    {
                                    $id_archivo =$row["id"];
                                    $n_corto =$row["n_corto"];
                                    echo "<option value='".$id_archivo."'>".$n_corto."</option>";
                                    $n++;
                                    }
                                    }
                            ?>  
                            </select>
                        </div> 
                        <br>
                        
                        <div>                           
                            <label>
                            Observaciones de la empresa:
                            </label>
                            <br><br>
                            <textarea  name = "observaciones" class="form-control">Escriba sus observaciones sobre el contenido del archivo
                            </textarea>
                        </div>  
                        
                        <br>
                        <button type='submit' class='btn btn-warning' style='color: white;' name='submit'>Enviar</button>
                    </form>
                    
                </div>
                    
                <br><br>

                <!-- Descripcion contenido archivos-->
                <div style="border:2px; border-style:solid; border-color:#B6B2B1; padding: 1em;" >
                    
                <?php
                $sql1 = "SELECT * FROM archivos_soporte WHERE id_indicador = '".$indicador."' ORDER BY id ASC";
                $result1 = mysqli_query($conn,$sql1);
                echo "<label for='nombre'>Tema:</label><select name='seleccion' id='seleccion' onchange='descripcion()' class='form-control'><option value='0'></option>";
                $n=1;
                if ($result1->num_rows > 0) 
                {
                    while($row = $result1->fetch_assoc()) 
                    {
                        $id_archivo =$row["id"];
                        $n_corto =$row["n_corto"];
                        echo "<option value='".$id_archivo."'>".$n_corto."</option>";
                    $n++;
                    }
                }
                echo "</select>";
                ?>
    
    
                <label>
                Contenido que debe tener el archivo:
                <br></label>
                <br>
                
                <p id = "descripcion1" >  </p>
                
                </div>

                <br><br>

                <!-- tabla archivos cargados-->
                <div style="border:2px; border-style:solid; border-color:#B6B2B1; padding: 1em;" >                 
                
                    <?php
                    $sql = "SELECT * FROM rep_archivos WHERE id_indicador = '".$indicador."' AND trim_ind = '".$trim_ind."' AND year_ind = '".$year_ind."' ORDER BY id ASC";
                    $result = mysqli_query($conn,$sql);
                    echo "<table class='table table-striped'><tr><th>Archivos soporte cargados:</th><th></th><th></th></tr>";
                    $n=1;
                    if ($result->num_rows > 0) 
                    {
                        while($row = $result->fetch_assoc()) 
                        {
                            $descripcion = $row['nombre'];
                            $ruta = $row['ruta'];
                            echo "<tr><td></td><td>".$descripcion."</td><td><a href='".$ruta."' download>Ver</a></td></tr>";
                        $n++;
                        }
                    }
                    echo "</table>";
                    ?>   
    
                </div>
                
                <br><br>
                
            <div>
                
            <form style="text-align: right;" class="mpce-cfa-form  contact_form2 smue-form-5" method = "post" action="<?php echo $formMain; ?>">
                <button type="submit" class="btn" style='background-color:#190968; color:white'>Regresar</button>
            </form>
            
        </div>
        <br><br>

        <!-- Script para form que crea rows in form -->
        <script>
            function descripcion() 
                {
                    var id1 = document.getElementById("seleccion").value;
                    $.ajax({
                        url:"/SSPD/Archivo_SSPD.php",
                        method:"POST",
                        data:{id:id1},
                        dataType:"JSON", 
                        success:function(datos)
                        	{
                    		var k = (datos.resultado); // Campo resultado de datos 
                    		document.getElementById("descripcion1").innerHTML = k;
                    		//alert(k);
                        	}
                    }); 
            }  
            
        </script>
       

    </div>
        

    </div><!-- .site-inner -->
    
    </div><!-- .site -->

</body>

</html>