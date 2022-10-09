<?php
	/**
	* conexion con la base de datos del servidor local
	*/
    $conn = mysqli_connect("db","root","yLHz1ahKMKlF5MvUmgwJpwy7wNhR1Ku6i5zo1IVZg6vFvoZTlM","pglp_db");
    // Check connection
    mysqli_query($conn, "SET NAMES 'UTF8'");
    if (mysqli_connect_error())
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
    // echo 'Conectado satisfactoriamente';
?>