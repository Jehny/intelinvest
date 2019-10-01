 'use strict';
$(document).ready(function(){
    
    $( "#tipoPerfil" ).change(function() {
        $("#tipoArquivo").css("display", "none");
        $("#usuario").css("display", "none");
    });

     $('#myList span').on('click', function (e) {
          e.preventDefault()
          $(this).tab('show')
      });
});


