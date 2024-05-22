<?php
require_once 'conexion.php';
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = $_POST["nombre"];
    $apellidos = $_POST["apellidos"];
    $email = $_POST["email"];
    $password = $_POST["pass"];

    $nombre = stripslashes($nombre);
    $apellidos = stripslashes($apellidos);
    $email = stripslashes($email);
    $password = stripslashes($password);
    
    $nombre = mysqli_real_escape_string($conexionBD, $nombre);
    $apellidos = mysqli_real_escape_string($conexionBD, $apellidos);
    $email = mysqli_real_escape_string($conexionBD, $email);
    $hash = password_hash($password, PASSWORD_DEFAULT);

    $sql_check = "SELECT * FROM usuarios WHERE email = '$email'";
    $result_check = $conexionBD->query($sql_check);

    if ($result_check->num_rows > 0) {
        echo "El correo electrónico ya está registrado.";
    } else {
        $sql_insert = "INSERT INTO usuarios (nombre, apellidos, email, pass) VALUES ('$nombre', '$apellidos', '$email', '$hash')";
        if ($conexionBD->query($sql_insert) === TRUE) {
            echo "Usuario registrado exitosamente.";
        } else {
            echo "Error al registrar usuario: " . $conexionBD->error;
        }
    }
}

$conexionBD->close();
?>
