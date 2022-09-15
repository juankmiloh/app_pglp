<?php

session_start();

$formMain = "/SSPD_PGLP8page1.php";
$uploadData = "SSPD/SSPD8UploadPGLP.php";
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


// Toma fecha
date_default_timezone_set('America/Bogota'); // Fija hora zona local
$Fecha = date("Y-m-d H:i:s"); 

$query = "SELECT id AS Resultado FROM rep_indicadores WHERE id_indicador = '".$indicador."' AND trim_ind = '".$trim_ind."' AND year_ind = '".$year_ind."' ORDER BY id DESC LIMIT 0,1"; // Toma ultimo
$result = mysqli_query($conn, $query);

if ($result->num_rows > 0) 
{
    $row = mysqli_fetch_array($result);
    $idcargado = $row["Resultado"];
} 
else
{
    $sql = "INSERT INTO rep_indicadores (reg_date,trim_ind,year_ind,id_indicador,id_usuario) VALUES ('".$Fecha."','".$trim_ind."','".$year_ind."','".$id_indicador."','".$idusuario."')";
    mysqli_query($conn, $sql);
    $idcargado = mysqli_insert_id($conn);    
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

 
 
        <!-- inicio desplegable-->
        <div class="container-fluid" >
            
            <div>
               <br><br>
            </div>
       
            <div class="sm-span12 smue-clmn sme-dsbl-margin-left sme-dsbl-margin-right">   
                        
                <p>&nbsp;</p>    
                
                <br><br>
                
                <?php
                $sql2 = "SELECT * FROM indicadores WHERE id = '".$indicador."'";
                $result2 = mysqli_query($conn,$sql2);
                $row2 = mysqli_fetch_array($result2);
                $objetivo = $row2["id_objetivo"];
                
                $sql3="SELECT * FROM objetivos WHERE id = '".$objetivo."'";
                $result3 = mysqli_query($conn,$sql3);
                $row3 = mysqli_fetch_array($result3);
                
                echo "<h5><b>Objetivo: ".$row3["nombre"]."</b></h5><br></br>";
                echo "<h6><b>Indicador ".$row2["tipo"].": ".$row2["nombre"]."</b></h6>";
                ?>
    
                <br>
                
                <!-- Form datos-->
                
                <form class="mpce-cfa-form  contact_form2 smue-form-5" method = "post" action="<?php echo $uploadData; ?>" onSubmit="return confirm('¿Esta seguro de cargar la información?');">
                    
                    <!-- variables ocultas -->
    
                    <input type="hidden" name="id_indicador" value=<?php echo $indicador; ?> > 
                    <input type="hidden" name="year_ind" value=<?php echo $year_ind; ?> >
                    <input type="hidden" name="trim_ind" value=<?php echo $trim_ind; ?> > 
    
                    <!-- variables indicador -->
                    <div style="border:2px; border-style:solid; border-color:#B6B2B1; padding: 1em;">
                                                        
                        <?php
        
                        $sql2 = "SELECT * FROM variables WHERE id_indicador = '".$indicador."'";
                        $result2 = mysqli_query($conn,$sql2);
                        
                        $n=1;
                        if ($result2->num_rows > 0) 
                        {
                            // output data of each row
                            while($row = $result2->fetch_assoc()) 
                            {
                                $sql = "SELECT * FROM rep_indicadores WHERE id = '".$idcargado."'";
                                $result = mysqli_query($conn,$sql);
                                $row1 = mysqli_fetch_array($result);
                                $variable = "var".$n;
                                $var = $row1[$variable];
                                
                                echo "<label>".$row["variable"].": </label>";
                                echo "<input type = 'number' name = '".$variable."' value='".$var."' class = 'box'/>";
                            $n++;
                            }
                        } 
                        ?>
                        
                        <br>
                        

                    </div>
    
                    <br><br>
    
                    <!-- Informacion indicador -->                      
                    <div style="border:2px; border-style:solid; border-color:#B6B2B1; padding: 1em;">
                        <label>
                        Usuarios beneficiados totales (cantidad) :
                        </label>
                        
                        <input type = "number" name = "usuarios" class = "box"  value = "<?php
                                $sql = "SELECT * FROM rep_indicadores WHERE id = '".$idcargado."'";
                                $result = mysqli_query($conn,$sql);
                                $row1 = mysqli_fetch_array($result);
                                echo ($row1["usuarios"]); 
                        ?>"/>
                        
                        <br>
                        
                        <label style="color:#B42304; font-size: 10px">
                        * Se debe anexar archivo de excel con la desagregación de la cantidad de usuarios beneficiados por departamento cuando sea posible hacer esta discriminación.
                        </label> 
    
                    </div>                            
    
                    <br><br>
    
                    <div style="border:2px; border-style:solid; border-color:#B6B2B1; padding: 1em;">
                        <label>
                        Monto de inversión total ejecutada en lo corrido del año ($COP) :
                        </label>
                        
                        <input type = "number" name = "inversion" class = "box" value = "<?php
                                $sql = "SELECT * FROM rep_indicadores WHERE id = '".$idcargado."'";
                                $result = mysqli_query($conn,$sql);
                                $row1 = mysqli_fetch_array($result);
                                echo ($row1["inversion"]); 
                        ?>" />
        
                        <br><br>                
                        
                        <label>
                        Mes de los $COP :
                        </label>
                        
                        <input type = "month" name = "fecha_pesos" class = "box" value = "<?php
                            $sql = "SELECT * FROM rep_indicadores WHERE id = '".$idcargado."'";
                            $result = mysqli_query($conn,$sql);
                            $row1 = mysqli_fetch_array($result);
                            
                            $date = $row1["fecha_pesos"];
                            $year = date('Y', strtotime($date));
                            $month = date('m', strtotime($date));
                            $fechapesos= $year."-".$month;
                            echo $fechapesos;
                            ?>"/>
    
                    </div>                              
                    <br><br> 
                    <br><br>
    
                    <div style="border:2px; border-style:solid; border-color:#B6B2B1; padding: 1em;" >                           
                        <label>
                        Zona geográfica afectada (nombres de barrios, municipios o departamentos) :
                        </label>
                        
                        <br>
                        
                         <textarea name = "zona" > 
                            <?php
                                $sql = "SELECT * FROM rep_indicadores WHERE id = '".$idcargado."'";
                                $result = mysqli_query($conn,$sql);
                                $row1 = mysqli_fetch_array($result);
                                echo ($row1["zona"]); 
                            ?>
                         </textarea>
                            
                    </div>                             
                            
                    <br><br>                        
                    <br><br> 
    
                    <div style="border:2px; border-style:solid; border-color:#B6B2B1; padding: 1em;"> 
                        <table>
                            <tr>
                                <th><br>Acciones</th>
                                <th></th>
                                <th></th>
                            </tr>
                            
                            <?php
                            
                            $sql2 = "SELECT * FROM rep_soportes WHERE id_rep_indicadores= '".$idcargado."' AND tipo_soporte = '2' ORDER BY id ASC";
                            $result2 = mysqli_query($conn,$sql2);
                            
                            $n=1;
                            if ($result2->num_rows > 0) 
                            {
                                while($row = $result2->fetch_assoc()) 
                                {
                                echo "<tr><td width='60%'> <textarea id='subject' name='acciones[]' >".$row["descripcion"]."</textarea> </td><td><button type='button' onclick='deleteRow(this);'>Borrar</button></td></tr>";                                
                                $n++;
                                }
                            } 
                            ?>
                                
                            
                            <tbody id="tbody1"></tbody>
                        </table>
        
                        
                        <label style="color:#B42304; font-size: 10px">
                        * Se deben anexar archivos con la información detallada que soporta las acciones ejecutadas (tales como gráficas, tablas y fotos).
                        </label>                             
                        
                        <p>
                        <button type="button" onclick="addItem1();">Agregar Acción</button>
                        </p>                            
                            
                    </div>
    
                    <br><br>                        
                    <br><br>     
                            
                    <div style="border:2px; border-style:solid; border-color:#B6B2B1; padding: 1em;">                             
                        <table>
                            <tr>
                                <th><br>Beneficios particulares de las acciones</th>
                                <th></th>
                                <th></th>
                            </tr>
                            
                            <?php
                            
                            $sql2 = "SELECT * FROM rep_soportes WHERE id_rep_indicadores= '".$idcargado."' AND tipo_soporte = '1' ORDER BY id ASC";
                            $result2 = mysqli_query($conn,$sql2);
                            
                            $n=1;
                            if ($result2->num_rows > 0) 
                            {
                                while($row = $result2->fetch_assoc()) 
                                {
                                echo "<tr><td width='60%'> <textarea id='subject' name='beneficios[]' >".$row["descripcion"]."</textarea> </td><td><button type='button' onclick='deleteRow(this);'>Borrar</button></td></tr>";                                
                                $n++;
                                }
                            } 
                            ?>                            
                            
                            <tbody id="tbody2"></tbody>
                        </table>
                     
                        <p>
                        <button type="button" onclick="addItem2();">Agregar Beneficio</button>
                        </p>
                            
                    </div>
    
                    <br><br> 
    
                    <div style="border:2px; border-style:solid; border-color:#B6B2B1; padding: 1em;"> 
                        <table>
                            <tr>
                                <th><br>Dificultades</th>
                                <th></th>
                                <th></th>
                            </tr>
                            
                            <?php
                            
                            $sql2 = "SELECT * FROM rep_soportes WHERE id_rep_indicadores= '".$idcargado."' AND tipo_soporte = '3' ORDER BY id ASC";
                            $result2 = mysqli_query($conn,$sql2);
                            
                            $n=1;
                            if ($result2->num_rows > 0) 
                            {
                                while($row = $result2->fetch_assoc()) 
                                {
                                echo "<tr><td width='60%'> <textarea id='subject' name='dificultades[]' >".$row["descripcion"]."</textarea> </td><td><button type='button' onclick='deleteRow(this);'>Borrar</button></td></tr>";                                
                                $n++;
                                }
                            } 
                            ?>  
                            
                            <tbody id="tbody3"></tbody>
                        </table>
                        
                        
                        <p>
                        <button type="button" onclick="addItem3();">Agregar Dificultad</button>
                        </p>                            
                            
                    </div>
    
                    <br><br>  
                    
                    <p>
                    <input type="submit" name="addData" value="Subir información" style="background-color:#190968; border-color:blue; color:white">
                    </p>
                    

                </form>
                
            <div>
                
                <form class="mpce-cfa-form  contact_form2 smue-form-5" method = "post" action="<?php echo $formMain; ?>">
                    <input type="submit" name="addData1" value="Regresar" style="float: right;">
                </form>
            
            </div>
            
            <br><br>
            <br><br>

    
                <!-- Script para form que crea rows in form -->
                <script>
                    var items = 0;
                    function addItem1() {
                        items++;
                 
                        var html = "<tr>";
                            html += "<td width='60%'> <textarea id='subject' name='acciones[]' placeholder='Entre la descripción de la acción aquí'></textarea> </td>";
    
                            html += "<td><button type='button' onclick='deleteRow(this);'>Borrar</button></td>"
                            html += "</tr>";
                 
                        var row = document.getElementById("tbody1").insertRow();
                        row.innerHTML = html;
                    }
                    
                    function addItem2() {
                        items++;
                 
                        var html = "<tr>";
                            html += "<td width='60%' > <textarea id='subject' name='beneficios[]' placeholder='Entre la descripción del beneficio aquí'  ></textarea> </td>";
                          
                            html += "<td><button type='button' onclick='deleteRow(this);'>Borrar</button></td>"
                            html += "</tr>";
                 
                        var row = document.getElementById("tbody2").insertRow();
                        row.innerHTML = html;
                    }            
    
                    function addItem3() {
                        items++;
                 
                        var html = "<tr>";
                            html += "<td width='60%'> <textarea id='subject' name='dificultades[]' placeholder='Entre la descripción de la dificultad aquí'  ></textarea> </td>";
                          
                            html += "<td><button type='button' onclick='deleteRow(this);'>Borrar</button></td>";
                            html += "</tr>";
                 
                        var row = document.getElementById("tbody3").insertRow();
                        row.innerHTML = html;
                    }   
    
                    function deleteRow(button) {
                        button.parentElement.parentElement.remove();
                        // first parentElement will be td and second will be tr.
                    }
                    
                </script>
                    
        
            </div>
            
        
        </div>
        </div>
        

  
        
    
    </div><!-- .site-inner -->
    
    </div><!-- .site -->

</body>

</html>