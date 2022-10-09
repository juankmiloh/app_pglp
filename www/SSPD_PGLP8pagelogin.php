<?php
require_once "SSPD/ConfigSSPD.php";
require_once "SSPD/constantes.php";

if ($_SERVER["REQUEST_METHOD"] === "GET") {
    header('Content-Type: application/json'); // Specify the type of data
    $ch = curl_init(URL_GESTOR . 'autenticacion/validarJwt'); // Initialise cURL
    $authorization = "Authorization: Bearer " . $_GET['gtjwt']; // Prepare the authorisation token
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json' , $authorization )); // Inject the token into the header
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POST, 1); // Specify the request method as POST
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1); // This will follow any redirects
    $result = curl_exec($ch); // Execute the cURL statement
    curl_close($ch); // Close the cURL connection
    $info = curl_getinfo($ch, CURLINFO_HTTP_CODE);

    if ($info == 200) {
        $array = json_decode($result);
        $usuario = $array->usuario; // Return the received data

        $sql = "SELECT * FROM `usuarios` WHERE `email` ='" . $usuario->email . "'";
        $result = $conn->query($sql);

        if($result && mysqli_num_rows($result) > 0) {
            $user = $result->fetch_assoc();
            session_start();
            session_regenerate_id();
            $_SESSION["user_id"] = $user["id"];

            header("Location: ". HOST ."SSPD_PGLP8page1.php");
            exit;
        } else {
            $sql = "INSERT INTO `usuarios`(`usuario`, `id_agente`, `email`, `passcode`, `trim_ind`, `year_ind`, `page_main`) 
            VALUES ('".$usuario->nickname."','Air-e','".$usuario->email."','".$usuario->contrasena."','5','2022','')";
            mysqli_query($conn, $sql);
            $idusuario = mysqli_insert_id($conn);

            session_start();
            session_regenerate_id();
            $_SESSION["user_id"] = $idusuario;

            header("Location: ". HOST ."SSPD_PGLP8page1.php");
            exit;
        }
    } else {
        echo "<script>window.close();</script>";
    }
}