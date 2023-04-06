$(document).ready(function () {
  $('#myForm').submit(function (event) {
    event.preventDefault();
    var opcionesSeleccionadas = $('input[name="opcion[]"]:checked').length;
    /*Valida que texo contea numero y letras*/
    var campoTexto = $('input[name="alias"]').val();
    var regex = /^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]+$/;
    /**********************/
    if (opcionesSeleccionadas < 2) {
      $('#alerta').html('<span class="alerta-error">Debe seleccionar al menos 2 opciones.</span>');
    } else if (!regex.test(campoTexto)) {
      $('#alerta').html('<span class="alerta-error">El Alias debe contener letras y números.</span>');
    } else {
      //obtener los valores de las opciones seleccionadas para enviarlos en la data
      var opcionesSeleccionadas = $('input[name="opcion[]"]:checked');
      var valoresSeleccionados = [];
      opcionesSeleccionadas.each(function () {
        //variable con los valores de la selección
        valoresSeleccionados.push($(this).val());
      });
      $('#alerta').html('');

      //ajax que envía datos del formulario al controlador para validar que no exista el RUT y registrar si corresponde
      $.ajax({
        url: './controlador/procesar.php',
        type: 'POST',
        data: $(this).serialize() + '&opciones=' + JSON.stringify(valoresSeleccionados),
        success: function (data) {
          var da = JSON.parse(data);
          var status = da.status;
          var mensaje = da.result;

          /*Manejamos las respuestas obtenidas de la consulta*/
          if (status == 'ok') {
            $('#alerta').html(mensaje);
            setTimeout(function () {
              $('#myForm')[0].reset();
              $('#alerta').html('');
            }, 2000);
          } else if (status == 'error1') {
            $('#alerta').html(mensaje);
          } else if (status == 'error2') {
            $('#alerta').html(mensaje);
          } else if (status == 'error3') {
            $('#alerta').html(mensaje);
          } else if (status == 'error4') {
            $('#alerta').html(mensaje);
          }
        },
        error: function () {
          console, console.log(data);
        }
      });
    }
  });
});