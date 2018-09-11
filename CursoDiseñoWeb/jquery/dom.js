$(document).ready(function(){
    //Obtener elemento padre inmediato y propiedad css() como objeto
    // $('#tercera').parent().css({
    //     background:'#1b3d82'
        
    // });

    //OBTENER TODOS LOS ELEMENTOS PADRES
    // $('#tercera').parents();

    //OBTENER TODOS LOS ELEMENTOS HIJOS
    // $('#padre').children().fadeOut(500);

    //OBTENER ELEMENTO HIJO CON FILTRO(el filtro solo se aplica a los hijos directos)
    // $('#padre').children('.caja').fadeOut(500);

    //FIND OBTIENE HIJOS SIN IMPORTAR SI SON DIRECTOS O NO

    // $('#contenedor').find('.caja').slideUp(500);

    //ELEMENTOS HERMANOS
    // $('#tercera').siblings().hide(1000);

    //ELEMENTOS SIGUIENTE Y ANTERIOR (NEXT - PREV) para todos esta preAll nextAll
    $('#tercera').next().css({
        background:'#000'
    });
});