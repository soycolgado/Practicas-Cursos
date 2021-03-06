var btn = document.getElementById('btn_cargar_usuarios');
var loader = document.getElementById('loader');

btn.addEventListener('click',function(){
    var peticion = new XMLHttpRequest();
    peticion.open('GET','php/leer-datos.php');

    loader.classList.add('active');

    peticion.onload = function(){
        var datos = JSON.parse(peticion.responseText);
        
       for(var f = 0; f < 5; f++){
           var elemento = document.createElement("tr");
           elemento.innerHTML += "<td>"+datos[f].id+"</td>";
           elemento.innerHTML += "<td>"+datos[f].nombre+"</td>";
           elemento.innerHTML += "<td>"+datos[f].edad+"</td>";
           elemento.innerHTML += "<td>"+datos[f].pais+"</td>";
           elemento.innerHTML += "<td>"+datos[f].correo+"</td>";
           var tabla = document.getElementById('tabla');
           tabla.appendChild(elemento);
       }
    }

    peticion.onreadystatechange = function(){
        if(peticion.readyState == 4 && peticion.status == 200){
            loader.classList.remove('active');
        }
    }

    peticion.send();
});