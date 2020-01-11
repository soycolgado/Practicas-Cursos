$(document).ready(function(){
    let boton = document.getElementById('boton');
    boton.addEventListener('click',efecto);
});

function efecto(){
    $('.caja').slideToggle(1000,()=>{
        alert('se termino la animacion');
    });
}