<?php
require_once 'conexion.php';

$consulta = "SELECT e.ID_Evento, e.Nombre, e.Fecha, e.Localizacion, e.Director, e.Secretario, e.Escrutinio, e.Licencia_DJ, e.Pista, e.Finalizado, emp.Nombre AS Organizador, emp.Pagos AS Pagos FROM eventos e JOIN eventos_empresa ee ON e.ID_Evento = ee.ID_Evento JOIN empresas emp ON ee.ID_Empresa = emp.ID_Empresa";

$datos = $conexionBD->query($consulta);

$resultados = array();

if ($datos->num_rows != 0) {
    while ($fila = $datos->fetch_assoc()) {
        $resultados[] = $fila;
    }
} 


$json_resultados = json_encode($resultados);

echo $json_resultados;

$conexionBD->close();
?>
