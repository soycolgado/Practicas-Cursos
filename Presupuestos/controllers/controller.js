var btnProcesador = document.getElementById("procesador");
var btnMemoria = document.getElementById("memoria");
var btnMother = document.getElementById("mother");
var btnDisco = document.getElementById("disco");

var tabla = document.getElementById("tabla");

function mostrarTabla(){
    var boton = this;
    var peticion = new XMLHttpRequest();
    peticion.open("GET","models/mostrar.php?action="+boton.id);
    peticion.onload = function(){
        var datos = JSON.parse(peticion.responseText);
        for(var f=0; f < datos.length; f ++){
            var elemento = document.createElement("tr");
            elemento.innerHTML += "<td>"+datos[f].sku+"</td>";
            elemento.innerHTML += "<td>"+datos[f].descripcion+"</td>";
            elemento.innerHTML += "<td>"+datos[f].marca+"</td>";
            elemento.innerHTML += "<td>"+datos[f].precio+"</td>";
            elemento.innerHTML += "<td>"+datos[f].distribuidor+"</td>";
            tabla.append(elemento);
        }
    }

    peticion.send();
}



btnProcesador.addEventListener("click",mostrarTabla);
btnMemoria.addEventListener("click",mostrarTabla);
btnMother.addEventListener("click",mostrarTabla);
btnDisco.addEventListener("click",mostrarTabla);