<?php


$cargacuenta = "SSPD/SSPD8Cuenta.php";

require_once "SSPD/ConfigSSPD.php";

$conn->set_charset("utf8"); // change character set to utf8


if(!empty($_GET['status']))
{
    switch($_GET['status'])
    {
        case 'succ':
            echo '<script type="text/javascript">alert("Los datos han sido cargados exitosamente.")</script>';
            break;
        case 'err':
            echo '<script type="text/javascript">alert("Sucedi贸 un problema por favor intente de nuevo.")</script>';            
            break;
        case 'pass':
             echo '<script type="text/javascript">alert("Passwords deben coincidir")</script>';             
            break;
        case 'agente':
             echo '<script type="text/javascript">alert("Se requiere el id del agente")</script>';             
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

 
 
        <!-- inicio desplegable-->
        <div class="container-fluid" >
            
            <div>
               <br><br>

       
                <!-- Forms archivos-->
    
                <form class="mpce-cfa-form  contact_form2 smue-form-5" action="<?php echo $cargacuenta; ?>" method="post" id="signup" novalidate>

                    <label >Usuario</label>
                    <input type="text"  name="usuario" class = "box">
                    
                    <label >Id agente</label>
                    <input type="text"  name="agente" class = "box">

                    <label >Periodo</label>
                    <input type="number"  name="year_ind" class = "box">

                    <label >Trimestre</label>
                    <input type="number"  name="trim_ind" class = "box">

                    <label >Password</label>
                    <input type="password"  name="password" class = "box">

                    <label >Repita el password</label>
                    <input type="password" name="password_confirmation" class = "box">

                
                <input type = "submit" value = " Enviar "  /><br />
                
                </form>

    
                <br><br>

        
            </div>
        
        </div>
    </div>
        
  
        
    
</div><!-- .site-inner -->

</div><!-- .site -->





</body>

</html>