var btn_cargar = document.getElementById('btn_cargar_usuarios');
var error_box = document.getElementById('error_box');
var tabla = document.getElementById('tabla');
var loader = document.getElementById('loader');

var usuario_nombre,
    usuario_edad,
    usuario_pais,
    usuario_correo;

function cargarUsuarios(){
    tabla.innerHTML = '<tr><th>ID</th><th>Nombre</th><th>Edad</th><th>Pais</th><th>Correo</th></tr>';

    var peticion = new XMLHttpRequest();
    peticion.open('GET','php/leer-datos.php');

    loader.classList.add('active');

    peticion.onload = function(){
        var datos = JSON.parse(peticion.responseText);
        if(datos.error){
            error_box.classList.add('active');
        }else{
            for(var f = 0; f < datos.length; f++){
                var elemento = document.createElement('tr');
                elemento.innerHTML += "<td>"+datos[f].ID+"</td>";
           elemento.innerHTML += "<td>"+datos[f].nombre+"</td>";
           elemento.innerHTML += "<td>"+datos[f].edad+"</td>";
           elemento.innerHTML += "<td>"+datos[f].pais+"</td>";
           elemento.innerHTML += "<td>"+datos[f].correo+"</td>";
           tabla.appendChild(elemento);
            }
        }
    }

    peticion.onreadystatechange = function(){
        if(peticion.readyState == 4 && peticion.status == 200){
            loader.classList.remove('active');
        }
    }

    peticion.send();
}

btn_cargar.addEventListener('click',cargarUsuarios);