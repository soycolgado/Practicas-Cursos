var btnProcesador = document.getElementById("procesador");
var btnMemoria = document.getElementById("memoria");
var btnMother = document.getElementById("mother");
var btnDisco = document.getElementById("disco");
var btnDisco2 = document.getElementById("disco2");
var btnVga = document.getElementById("vga");
var btnFuente = document.getElementById("fuente");
var btnGabinete = document.getElementById("gabinete");
var tabla = document.getElementById("tabla");

var tablaPresupuesto = document.getElementById("tablaPresupuesto");

function mostrarTabla(e){
    borrarTabla();
    e.preventDefault();
    var componente = this.id;
    console.log(componente);
    var peticion = new XMLHttpRequest();
    if(componente == "disco2"){
        peticion.open("GET","models/mostrar.php?action=disco"); 
    }else{
        peticion.open("GET","models/mostrar.php?action="+componente);

    }
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
        var filaPresupuesto = "filaProcesador"
    }else if(e.className == "fila_mother"){
        var textoDescripcion = "textoMother";
        var filaPresupuesto = "filaMother";

    }else if(e.className == "fila_memoria"){
        var textoDescripcion = "textoMemoria";
        var filaPresupuesto = "filaMemoria";
    }else if(e.className == "fila_disco"){
        var textoDescripcion = "textoDisco";
        var filaPresupuesto = "filaDisco1";

    }else if(e.className == "fila_disco2"){
        var textoDescripcion = "textoDisco2";
        var filaPresupuesto = "filaDisco2";
    }else if(e.className == "fila_vga"){
        var textoDescripcion = "textoVga";
        var filaPresupuesto = "filaVga";
    }else if(e.className == "fila_fuente"){
        var textoDescripcion = "textoFuente";
        var filaPresupuesto = "filaFuente";
    }else if(e.className == "fila_gabinete"){
        var textoDescripcion = "textoGabinete";
        var filaPresupuesto = "filaGabinete";
    }



    console.log(e.childNodes[1].firstChild);
    var info = document.getElementById(textoDescripcion);
    info.innerHTML = e.childNodes[1].firstChild.nodeValue;

    if(filaPresupuesto == "filaProcesador"){
        // document.getElementById("skuProcesador").innerHTML = e.childNodes[0].firstChild.nodeValue;
        // document.getElementById("descripcionProcesador").innerHTML = e.childNodes[1].firstChild.nodeValue;
        // document.getElementById("marcaProcesador").innerHTML = e.childNodes[2].firstChild.nodeValue;
        // document.getElementById("costoProcesador").innerHTML = e.childNodes[3].firstChild.nodeValue;
        // document.getElementById("distribuidorProcesador").innerHTML = e.childNodes[4].firstChild.nodeValue;
        var filaProcesador = document.getElementById('filaProcesador');
        console.log(filaProcesador.childNodes);
        console.log(e.childNodes)
        for(f = 0; f < 5; f++){
            filaProcesador.childNodes[f].innerHTML = e.childNodes[f].firstChild.nodeValue;
        }
    }else if(filaPresupuesto == "filaMother"){
        // document.getElementById("skuMother").innerHTML = e.childNodes[0].firstChild.nodeValue;
        // document.getElementById("descripcionMother").innerHTML = e.childNodes[1].firstChild.nodeValue;
        // document.getElementById("marcaMother").innerHTML = e.childNodes[2].firstChild.nodeValue;
        // document.getElementById("costoMother").innerHTML = e.childNodes[3].firstChild.nodeValue;
        // document.getElementById("distribuidorMother").innerHTML = e.childNodes[4].firstChild.nodeValue;
        var filaMother = document.getElementById('filaMother');
        console.log(filaMother.childNodes);
        console.log(e.childNodes)
        for(f = 0; f < 5; f++){
            filaMother.childNodes[f].innerHTML = e.childNodes[f].firstChild.nodeValue;
        }
    }else if(filaPresupuesto == "filaMemoria"){
        // document.getElementById("skuMemoria").innerHTML = e.childNodes[0].firstChild.nodeValue;
        // document.getElementById("descripcionMemoria").innerHTML = e.childNodes[1].firstChild.nodeValue;
        // document.getElementById("marcaMemoria").innerHTML = e.childNodes[2].firstChild.nodeValue;
        // document.getElementById("costoMemoria").innerHTML = e.childNodes[3].firstChild.nodeValue;
        // document.getElementById("distribuidorMemoria").innerHTML = e.childNodes[4].firstChild.nodeValue;
        var filaMemoria = document.getElementById('filaMemoria');
        console.log(filaMemoria.childNodes);
        console.log(e.childNodes)
        for(f = 0; f < 5; f++){
            filaMemoria.childNodes[f].innerHTML = e.childNodes[f].firstChild.nodeValue;
        }
    }else if(filaPresupuesto == "filaDisco1"){
        // document.getElementById("skuDisco1").innerHTML = e.childNodes[0].firstChild.nodeValue;
        // document.getElementById("descripcionDisco1").innerHTML = e.childNodes[1].firstChild.nodeValue;
        // document.getElementById("marcaDisco1").innerHTML = e.childNodes[2].firstChild.nodeValue;
        // document.getElementById("costoDisco1").innerHTML = e.childNodes[3].firstChild.nodeValue;
        // document.getElementById("distribuidorDisco1").innerHTML = e.childNodes[4].firstChild.nodeValue;
        var filaDisco1 = document.getElementById('filaDisco1');
        console.log(filaDisco1.childNodes);
        console.log(e.childNodes)
        for(f = 0; f < 5; f++){
            filaDisco1.childNodes[f].innerHTML = e.childNodes[f].firstChild.nodeValue;
        }
    }else if(filaPresupuesto == "filaDisco2"){
        // document.getElementById("skuDisco2").innerHTML = e.childNodes[0].firstChild.nodeValue;
        // document.getElementById("descripcionDisco2").innerHTML = e.childNodes[1].firstChild.nodeValue;
        // document.getElementById("marcaDisco2").innerHTML = e.childNodes[2].firstChild.nodeValue;
        // document.getElementById("costoDisco2").innerHTML = e.childNodes[3].firstChild.nodeValue;
        // document.getElementById("distribuidorDisco2").innerHTML = e.childNodes[4].firstChild.nodeValue;
        var filaDisco2 = document.getElementById('filaDisco2');
        console.log(filaDisco2.childNodes);
        console.log(e.childNodes)
        for(f = 0; f < 5; f++){
            filaDisco2.childNodes[f].innerHTML = e.childNodes[f].firstChild.nodeValue;
        }
    }else if(filaPresupuesto == "filaVga"){
        // document.getElementById("skuVga").innerHTML = e.childNodes[0].firstChild.nodeValue;
        // document.getElementById("descripcionVga").innerHTML = e.childNodes[1].firstChild.nodeValue;
        // document.getElementById("marcaVga").innerHTML = e.childNodes[2].firstChild.nodeValue;
        // document.getElementById("costoVga").innerHTML = e.childNodes[3].firstChild.nodeValue;
        // document.getElementById("distribuidorVga").innerHTML = e.childNodes[4].firstChild.nodeValue;
        var filaVga = document.getElementById('filaVga');
        console.log(filaVga.childNodes);
        console.log(e.childNodes)
        for(f = 0; f < 5; f++){
            filaVga.childNodes[f].innerHTML = e.childNodes[f].firstChild.nodeValue;
        }
    }else if(filaPresupuesto == "filaFuente"){
        // document.getElementById("skuFuente").innerHTML = e.childNodes[0].firstChild.nodeValue;
        // document.getElementById("descripcionFuente").innerHTML = e.childNodes[1].firstChild.nodeValue;
        // document.getElementById("marcaFuente").innerHTML = e.childNodes[2].firstChild.nodeValue;
        // document.getElementById("costoFuente").innerHTML = e.childNodes[3].firstChild.nodeValue;
        // document.getElementById("distribuidorFuente").innerHTML = e.childNodes[4].firstChild.nodeValue;
        var filaFuente = document.getElementById('filaFuente');
        console.log(filaFuente.childNodes);
        console.log(e.childNodes)
        for(f = 0; f < 5; f++){
            filaFuente.childNodes[f].innerHTML = e.childNodes[f].firstChild.nodeValue;
        }
}else if(filaPresupuesto == "filaGabinete"){
    // document.getElementById("skuGabinete").innerHTML = e.childNodes[0].firstChild.nodeValue;
    // document.getElementById("descripcionGabinete").innerHTML = e.childNodes[1].firstChild.nodeValue;
    // document.getElementById("marcaGabinete").innerHTML = e.childNodes[2].firstChild.nodeValue;
    // document.getElementById("costoGabinete").innerHTML = e.childNodes[3].firstChild.nodeValue;
    // document.getElementById("distribuidorGabinete").innerHTML = e.childNodes[4].firstChild.nodeValue;
    var filaGabinete = document.getElementById('filaGabinete');
        console.log(filaGabinete.childNodes);
        console.log(e.childNodes)
        for(f = 0; f < 5; f++){
            filaGabinete.childNodes[f].innerHTML = e.childNodes[f].firstChild.nodeValue;
        }
}
    
    
    
}



btnProcesador.addEventListener("click",mostrarTabla);
btnMemoria.addEventListener("click",mostrarTabla);
btnMother.addEventListener("click",mostrarTabla);
btnDisco.addEventListener("click",mostrarTabla);
btnDisco2.addEventListener("click",mostrarTabla);
btnVga.addEventListener("click",mostrarTabla);
btnFuente.addEventListener("click",mostrarTabla);
btnGabinete.addEventListener("click",mostrarTabla);
