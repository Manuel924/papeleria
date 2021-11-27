<?php

class ControladorVentas{

    /*=============================================================================================================================================
    MÉTODO MOSTRAR VENTAS
    =============================================================================================================================================*/

    static public function ctrMostrarVentas($item, $valor){

        $tabla = "ventas";

        $respuesta = ModeloVentas::MdlMostrarVentas($tabla, $item, $valor);

        return $respuesta;

    }

}