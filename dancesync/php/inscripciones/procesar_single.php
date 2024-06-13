<?php
require_once '../conexion.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $datos_participante = $_POST["datos_participante"];
    $poblacion = $_POST["poblacion"];
    $telefono = $_POST["telefono"];
    $email = $_POST["email"];
    $club = $_POST["club"];
    $cat_edad = $_POST["cat_edad"];
    $mod_standard = $_POST["mod_standard"];
    $mod_latinos = $_POST["mod_latinos"];
    $id_evento = $_POST["id_evento"];

    if (empty($datos_participante) || empty($poblacion) || empty($telefono) || empty($email) || empty($club) || $cat_edad == 'Seleccione una categoría') {
        echo "Todos los campos son obligatorios.";
        exit;
    }

    if (!preg_match("/^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$/", $datos_participante)) {
        echo "El nombre del participante solo puede contener letras y espacios.";
        exit;
    }
 
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo "Formato de correo electrónico no válido.";
        exit;
    }

    if (!preg_match("/^[0-9]{9}$/", $telefono)) {
        echo "El teléfono debe contener 9 dígitos.";
        exit;
    }

    $datos_participante = mysqli_real_escape_string($conexionBD, $datos_participante);
    $poblacion = mysqli_real_escape_string($conexionBD, $poblacion);
    $telefono = mysqli_real_escape_string($conexionBD, $telefono);
    $email = mysqli_real_escape_string($conexionBD, $email);
    $club = mysqli_real_escape_string($conexionBD, $club);
    $cat_edad = mysqli_real_escape_string($conexionBD, $cat_edad);
    $mod_standard = mysqli_real_escape_string($conexionBD, $mod_standard);
    $mod_latinos = mysqli_real_escape_string($conexionBD, $mod_latinos);

    mysqli_autocommit($conexionBD, false);

    $error = false;

    $sql_insert_participante = "INSERT INTO participantes_single (Datos, Poblacion, Telefono, Email, Club, Cat_Edad, Cat_Standard, Cat_Latinos)
                                VALUES ('$datos_participante', '$poblacion', '$telefono', '$email', '$club', '$cat_edad', '$mod_standard','$mod_latinos')";

    if (!$conexionBD->query($sql_insert_participante)) {
        $error = true;
        echo "Error al registrar la inscripción: " . $conexionBD->error;
    }

    $id_single = $conexionBD->insert_id;


    $sql_insert_evento_participante = "INSERT INTO eventos_participantesingle (ID_Participante, ID_Evento)
                                       VALUES ('$id_single', '$id_evento')";

    if (!$conexionBD->query($sql_insert_evento_participante)) {
        $error = true;
        echo "Error al asociar el participante al evento: " . $conexionBD->error;
    }

    if ($error) {
        mysqli_rollback($conexionBD);
        echo "Transacción no completada. Se ha deshecho.";
    } else {
        mysqli_commit($conexionBD);
        echo "Inscripción registrada correctamente.";
    }

    mysqli_autocommit($conexionBD, true);

    $conexionBD->close();
}
?>