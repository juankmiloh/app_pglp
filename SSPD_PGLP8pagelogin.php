<?php

$formMain = "/SSPD_PGLP8page1.php";

require_once "SSPD/ConfigSSPD.php";

$conn->set_charset("utf8"); // change character set to utf8

$is_invalid = false;

if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $agente = $_POST['agente'];
    $passcode = $_POST['password'];

    $sql = "SELECT * FROM usuarios
                    WHERE usuario ='" . $agente . "'";

    $result = $conn->query($sql);
    $user = $result->fetch_assoc();

    $count = mysqli_num_rows($result);

    if ($count == 1) {

        if (password_verify($passcode, $user["passcode"])) {

            session_start();
            session_regenerate_id();
            $_SESSION["user_id"] = $user["id"];

            header("Location: http://localhost/app_pglp" . $formMain);
            exit;
        }
    }

    $is_invalid = true;
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

        <div class="container">

            <div id="content">

                <!-- inicio desplegable-->
                <div>

                    <div>
                        <br><br>
                    </div>

                    <!-- Forms archivos-->

                    <h2><b>Login</b></h2>
                    <br><br>

                    <?php if ($is_invalid) : ?>
                        <em>Clave incorrecta</em>
                    <?php endif; ?>

                    <div>

                        <form method="post">
                            <div class="mb-3">
                                <label for="agente" class="form-label" style="color: gray;"><b>Agente</b></label>
                                <input type="text" class="form-control" id="agente" name="agente">
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label" style="color: gray;"><b>Password</b></label>
                                <input type="password" class="form-control" id="password" name="password">
                            </div>
                            <button type="submit" class="btn btn-warning" style="color: white; font-weight: bold;">Enviar</button>
                        </form>
                    </div>

                </div>

                <br><br>


            </div>

        </div>
    </div>

</body>

</html>