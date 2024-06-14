<?php
$server = "localhost";
$usuario = "root";
$base = "dancesync";

$conexionBD = new mysqli($server, $usuario, "", $base);

if ($conexionBD->connect_error) {
    die("Error de conexión: " . $conexionBD->connect_error);
}
?>
