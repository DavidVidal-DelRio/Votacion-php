$(document).ready(function() {
    // Petición AJAX
    $.ajax({
      url: "./controlador/regiones.php",
      type: "GET",
      dataType: "json",
      success: function(data) {
        // Llenado del select con los datos del JSON
        $.each(data, function(index,option) {
            $('#region').append($('<option>', {
              value: option.codigo,
              text: option.nombre
            },'</option>'));
          });
      },
      error: function(jqXHR, textStatus, errorThrown) {
        // Manejo del error
        $('#alerta').html('Error al cargar las regiones');

      }
    });
  });
  