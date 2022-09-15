<?php

$formMain = "/SSPD_PGLP7page1.php";

require_once "SSPD/ConfigSSPD.php";

$conn->set_charset("utf8"); // change character set to utf8

$is_invalid = false;

if ($_SERVER["REQUEST_METHOD"] === "POST") 
{
    
    $agente = $_POST['agente'];
    $passcode = $_POST['password'];
    
    $sql = "SELECT * FROM usuarios
                    WHERE usuario ='".$agente."'";
    
    $result = $conn->query($sql);
    $user = $result->fetch_assoc();

    // $count = mysqli_num_rows($result);

    // if ($count == 1) {

    //     if (password_verify($passcode, $user["passcode"])) 
    //     {

    //         session_start();
    //         session_regenerate_id();
    //         $_SESSION["user_id"] = $user["id"];

    //         header("Location: http://darinfraestructura.com".$formMain); 
    //         exit;
    //     }
        
    // }
    
    // $is_invalid = true;

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
       
                <!-- Forms archivos-->
    
                <h4>Login</h4>
                <br><br>
    
                    <?php if ($is_invalid): ?>
                        <em>Clave incorrecta</em>
                    <?php endif; ?>
                    
                    <form class="mpce-cfa-form  contact_form2 smue-form-5" method="post">
                        
                        <label >Agente</label>
                        <input type="text"  name="agente" class = "box">
                        
                        <label>Password</label>
                        <input type="password" name="password" class = "box">
                        
                        <input type = "submit" value = " Enviar "  /><br />
                        
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