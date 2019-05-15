var btnProcesador = document.getElementById("procesador");
var btnMemoria = document.getElementById("memoria");
var btnMother = document.getElementById("mother");
var btnDisco = document.getElementById("disco");
var btnDisco2 = document.getElementById("disco2");

var tabla = document.getElementById("tabla");

function mostrarTabla(e){
    borrarTabla();
    e.preventDefault();
    var componente = this.id;
    console.log(componente);
    var peticion = new XMLHttpRequest();
    peticion.open("GET","models/mostrar.php?action="+componente);
    peticion.onload = function(){
        var datos = JSON.parse(peticion.responseText);
        for(f=0; f < datos.length; f ++){
            var elemento = document.createElement("tr");
            elemento.className = 'fila_'+componente;
            elemento.setAttribute("onclick","tomarDatos(this)");
            elemento.setAttribute("id",datos[f].id);
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


function borrarTabla(){
    tabla.innerHTML = "<tr><th>SKU</th><th>Descripcion</th><th>Marca</th><th>Costo</th><th>Distribuidor</th></tr>";
    

}


    
function tomarDatos(e){
    if(e.className == "fila_procesador"){
        var textoDescripcion = "textoProcesador";
        
    }else if(e.className == "fila_mother"){
        var textoDescripcion = "textoMother";
    }else if(e.className == "fila_memoria"){
        var textoDescripcion = "textoMemoria";
    }else if(e.className == "fila_disco"){
        var textoDescripcion = "textoDisco";
    }



    console.log(e.childNodes[1].firstChild);
    var info = document.getElementById(textoDescripcion);
    info.innerHTML = e.childNodes[1].firstChild.nodeValue;
}









btnProcesador.addEventListener("click",mostrarTabla);
btnMemoria.addEventListener("click",mostrarTabla);
btnMother.addEventListener("click",mostrarTabla);
btnDisco.addEventListener("click",mostrarTabla);
btnDisco2.addEventListener("click",mostrarTabla);
