$(document).ready(function() {

  //evento change para detectar el cambio de selección en regiones y actualizar las comunas
  $('#region').on('change', function() { 

     // Petición AJAX se envia el código de la región seleccionada
    $.ajax({
      url: "./controlador/comunas.php?codigo="+$(this).val(),
      type: "GET",
      dataType: "json",
      success: function(data) {
             // Limpiar opciones de comuna
             $('#comuna').html('');
        // Llenado del select con los datos del JSON, codigo de comuna y nombre
        $('#comuna').html('<option value="">Seleccionar</option>');
        $.each(data, function(index,option) {
          $('#comuna').append($('<option>', {
            value: option.codigoInterno,
            text: option.nombre
          },'</option>'));
        });
      },
      error: function(jqXHR, textStatus, errorThrown) {
        // Manejo del error
        $('#mensaje').html('Error al cargar las comunas.');
        
      }
    });
  });

  });
    
 
  
  
  
  