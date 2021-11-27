/*=================================================================================================================================================
EDITAR CATEGORIA
=================================================================================================================================================*/

$(".tablas").on("click", ".btnEditarCategoria", function(){

    var idCategoria = $(this).attr("idCategoria");

    var datos = new FormData();
	datos.append("idCategoria", idCategoria);

    $.ajax({

        url: "ajax/categorias.ajax.php",
        method: "POST",
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        dataType:"json",
        success: function(respuesta){

            $("#editarCategoria").val(respuesta["categoria"]);
            $("#idCategoria").val(respuesta["id"]);

        }

	})


})

/*=================================================================================================================================================
ELIMINAR CATEGORIA
=================================================================================================================================================*/

$(".tablas").on("click", ".btnEliminarCategoria", function(){

    var idCategoria = $(this).attr("idCategoria");

    swal({

        title: '¿Está seguro que desea eliminar la categoría?',
        text: "¡Si no lo está, puede cancelar la acción!",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: '¡Si, eliminar categoría!'

    }).then(function(result){

        if(result.value){

            window.location = "index.php?ruta=categorias&idCategoria="+idCategoria;

        }

    })

})

/*=================================================================================================================================================
REVISAR SI LA CATEGORIA YA ESTÁ REGISTRADA
=================================================================================================================================================*/

$("#nuevaCategoria").change(function(){

    $(".alert").remove();

	var categoria = $(this).val();

	var datos = new FormData();
	datos.append("validarCategoria", categoria);

    $.ajax({

        url: "ajax/categorias.ajax.php",
        method: "POST",
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        dataType: "json",
        success:function(respuesta){

            if(respuesta){

                $("#nuevaCategoria").parent().after('</br><div class="alert alert-warning">Esta categoria ya existe en la base de datos.</div>');

                $("#nuevaCategoria").val("");

            }

        }

    })

})