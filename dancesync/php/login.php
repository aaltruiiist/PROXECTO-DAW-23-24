<?php
require_once "conexion.php";
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user = $_POST["username"];
    $password = $_POST["pass"];

    $user = stripslashes($user);
    $pass = stripslashes($password);
    $user = mysqli_real_escape_string($conexionBD, $user);
    $pass = mysqli_real_escape_string($conexionBD, $pass);

    $consulta = "SELECT * FROM usuarios WHERE Email = '$user'";
    $datos = $conexionBD->query($consulta);
 
    if ($datos->num_rows == 1) {
        $fila = $datos->fetch_assoc();
        if(password_verify($pass, $fila["pass"])){
            $_SESSION["identificado"] = true;
            $_SESSION["username"] = $user;
            echo "¡Inicio de sesión exitoso!";
        } else {
            echo "Usuario o contraseña incorrectos.";
        }
    } else {
        echo "Usuario o contraseña incorrectos.";
    }
}

$conexionBD->close();
?>
