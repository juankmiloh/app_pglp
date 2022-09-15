<?php
	/*
	* conexion con la base de datos del servidor local
	*/
    $conn = mysqli_connect("localhost","root","root","pglp_db");
    // Check connection
    mysqli_query($con, "SET NAMES 'UTF8'");
    if (mysqli_connect_error())
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
    // echo 'Conectado satisfactoriamente';
?>