var btnProcesador = document.getElementById("procesador");
var btnMemoria = document.getElementById("memoria");
var btnMother = document.getElementById("mother");
var btnDisco = document.getElementById("disco");

var tabla = document.getElementById("tabla");
var fila = document.get;
function mostrarTabla(e){
    borrarTabla();
    e.preventDefault();
    var peticion = new XMLHttpRequest();
    peticion.open("GET","models/mostrar.php?action="+this.id);
    peticion.onload = function(){
        var datos = JSON.parse(peticion.responseText);
        for(var f=0; f < datos.length; f ++){
            var elemento = document.createElement("tr");
            elemento.setAttribute("id",datos[f].id);
            elemento.innerHTML += "<td class='fila'>"+datos[f].sku+"</td>";
            elemento.innerHTML += "<td class='fila'>"+datos[f].descripcion+"</td>";
            elemento.innerHTML += "<td class='fila'>"+datos[f].marca+"</td>";
            elemento.innerHTML += "<td class='fila'>"+datos[f].precio+"</td>";
            elemento.innerHTML += "<td class='fila'>"+datos[f].distribuidor+"</td>";
            tabla.append(elemento);
        }
    }

    peticion.send();
}

function mostrarDescripcion(){
    var fila = document.getElementsByClassName('fila')[0];
    
}


function borrarTabla(){
    tabla.innerHTML = "<tr><th>SKU</th><th>Descripcion</th><th>Marca</th><th>Costo</th><th>Distribuidor</th></tr>";
}



btnProcesador.addEventListener("click",mostrarTabla);
btnMemoria.addEventListener("click",mostrarTabla);
btnMother.addEventListener("click",mostrarTabla);
btnDisco.addEventListener("click",mostrarTabla);
