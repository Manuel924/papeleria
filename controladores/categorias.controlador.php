<?php

class ControladorCategorias{

    /*=============================================================================================================================================
    CREAR CATEGORÍAS
    =============================================================================================================================================*/

    static public function ctrCrearCategoria(){

		if(isset($_POST["nuevaCategoria"])){

            if(preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ\-\_\ ]+$/', $_POST["nuevaCategoria"])){

                $tabla = "categorias";

				$datos = $_POST["nuevaCategoria"];

				$respuesta = ModeloCategorias::mdlIngresarCategoria($tabla, $datos);

				if($respuesta == "ok"){

                    echo '<script>

                            swal({

                                type: "success",
                                title: "La categoría ha sido almacenada correctamente",
                                showConfirmButton: true,
                                confirmButtonText: "Cerrar"

                            }).then(function(result){

                                if (result.value) {

                                    window.location = "categorias";

                                }

                            })

                    </script>';

				}

            }else{

                echo '<script>

                        swal({

                            type: "error",
                            title: "¡La categoría no puede ir vacía o llevar caracteres especiales!",
                            showConfirmButton: true,
                            confirmButtonText: "Cerrar"

                        }).then(function(result){

                            if (result.value) {

                                window.location = "categorias";

                            }

                        })

                </script>';

			}

		}

	}

    /*=============================================================================================================================================
    MOSTRAR CATEGORÍAS
    =============================================================================================================================================*/

    static public function ctrMostrarCategorias($item, $valor){

        $tabla = "categorias";

        $respuesta = ModeloCategorias::mdlMostrarCategorias($tabla, $item, $valor);

        return $respuesta;

	}

    /*=============================================================================================================================================
    EDITAR CATEGORÍAS
    =============================================================================================================================================*/

    static public function ctrEditarCategoria(){

        if(isset($_POST["editarCategoria"])){

            if(preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ\-\_\ ]+$/', $_POST["editarCategoria"])){

                $tabla = "categorias";

                $datos = array("categoria"=>$_POST["editarCategoria"], "id"=>$_POST["idCategoria"]);

                $respuesta = ModeloCategorias::mdlEditarCategoria($tabla, $datos);

				if($respuesta == "ok"){

                    echo '<script>

                            swal({

                                type: "success",
                                title: "La categoría ha sido actualizada correctamente",
                                showConfirmButton: true,
                                confirmButtonText: "Cerrar"

                            }).then(function(result){

                                if (result.value) {

                                    window.location = "categorias";

                                }

                            })

                    </script>';

                }


			}else{

                echo '<script>

                        swal({

                            type: "error",
                            title: "¡La categoría no puede ir vacía o llevar caracteres especiales!",
                            showConfirmButton: true,
                            confirmButtonText: "Cerrar"

                        }).then(function(result){

                            if (result.value) {

                                window.location = "categorias";

                            }

                        })

                </script>';

			}

		}

	}

    /*=============================================================================================================================================
    BORRAR CATEGORÍAS
    =============================================================================================================================================*/

    static public function ctrBorrarCategoria(){

        if(isset($_GET["idCategoria"])){

            $tabla ="Categorias";
			$datos = $_GET["idCategoria"];

			$respuesta = ModeloCategorias::mdlBorrarCategoria($tabla, $datos);

			if($respuesta == "ok"){

                echo '<script>

                        swal({

                            type: "success",
                            title: "La categoría ha sido eliminada correctamente",
                            showConfirmButton: true,
                            confirmButtonText: "Cerrar"

                        }).then(function(result){

                            if (result.value) {

                                window.location = "categorias";

                            }

                        })

                </script>';

            }

		}

    }

}