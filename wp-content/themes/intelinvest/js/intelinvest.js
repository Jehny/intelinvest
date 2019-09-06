 'use strict';
$(document).ready(function(){
    $('.carousel').carousel({interval: 3000, pause: false});
    
    // $.stellar({hideDistantElements: false, scrollProperty: 'scroll'});

    $('.textLimiter').html(function(i, h) {
        return h.length > 400 ? h.slice(0, 399) + ' <span title="' + h + '">[...]</span>': h;
    });

     //página de contato
    $('#enviar').bind("click", function(){
        if($('#nome').val() == "" || $('#email').val() == "" || $('#descricao').val() == ""){
            $('.alert').show();
            console.log('show');
        }
    });

    if($('#enviado_slider').length){
        $('#myModalSlider').modal('toggle');
    }
    
    $('.alert .close').bind("click", function(e) {
        $(this).parent().hide();
        console.log('hide');
    });

    // Exibir e esconder Mensagem do site
        $('#messageSite').slideDown(); 
        $('#closeMessage').on('click', function(e){
            e.preventDefault();
            $('#messageSite').slideUp();
            
        });

        /*================================
        SCROLL SUAVE DA PÁGINA
        ================================
        */

        $(function(){
            $(".scroll").click(function(event){
                event.preventDefault();

                var full_url = this.href;
                var parts = full_url.split("#");
                var trgt = parts[1];
                var target_offset = $("#"+trgt).offset();
                var speed = 1000;
                var target_top = target_offset.top - $(this).data('offset');
                console.log(target_top);
                console.log($('#container').height());
                $('html, body').animate({scrollTop:target_top}, speed);
            });
        });

        //END

        /*================================
        MÁSCARAS DOS FORMULÁRIOS
        ================================
        */
        /* Máscaras ER */
        // $("#telefone").mask("(00) 0000-00009");
        // $(".phone").mask("(99) 99999-999?9").focusout(function (event) {  
        //     var target, phone, element;  
        //     target = (event.currentTarget) ? event.currentTarget : event.srcElement;  
        //     phone = target.value.replace(/\D/g, '');
        //     element = $(target);  
        //     element.unmask();  
        //     if(phone.length > 10) {  
        //         element.mask("(99) 99999-999?9");  
        //     } else {  
        //         element.mask("(99) 99999-999?9");  
        //     }  
        // });
         $(".phone").mask("(99) 99999-9999");
        $('.cpf').mask('000.000.000-00', {reverse: true});

        $('#button_dropdown').bind("click", function() {
         
            if($(window).width() < 400){
                if($('.dropdown-menu').css('display') == 'none'){
                   $('#topo').css('height', '35%');
                }else {
                   $('#topo').css('height', '10%');
                }

            } else {
                if($('.dropdown-menu').css('display') == 'none'){
                   $('#topo').css('height', '60%');
                }else {
                   $('#topo').css('height', '20%');
                }
            } 
         
        });

        if($(window).width() == 768){
            $('#noticiasEdicas p').css('font-size', '22px');
        }

        $('#myList a').on('click', function (e) {
          e.preventDefault()
          $(this).tab('show')
        })

        $('.carousel[data-type="multi"] .item').each(function(){
          var next = $(this).next();
          if (!next.length) {
            next = $(this).siblings(':first');
          }
          next.children(':first-child').clone().appendTo($(this));
          
          for (var i=0;i<2;i++) {
            next=next.next();
            if (!next.length) {
                next = $(this).siblings(':first');
            }
            
            next.children(':first-child').clone().appendTo($(this));
          }
        });

        $( "#tipoPerfil" ).change(function() {
            $("#tipoArquivo").css("display", "none");
            $("#usuario").css("display", "none");
        });

        ;( function( $ ) {

            $( '.swipebox' ).swipebox();

        } )( jQuery );
        // $(":input").inputmask();


});


