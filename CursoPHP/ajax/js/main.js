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

function agregarUsuarios(e){
    e.preventDefault();
    //1
    var peticion = new XMLHttpRequest();
    //2
    peticion.open('POST','php/insertar-usuario.php');

    usuario_nombre = formulario.nombre.value.trim();
    usuario_edad = parseInt(formulario.edad.value.trim());
    usuario_pais = formulario.pais.value.trim();
    usuario_correo = formulario.correo.value.trim();
    
    if(formulario_valido()){
        
        error_box.classList.remove('active');
        //3
        var parametros = "nombre="+usuario_nombre+"&edad="+usuario_edad+"&pais="+usuario_pais+"&correo="+usuario_correo;
        //4
        peticion.setRequestHeader("Content-type","application/x-www-form-urlencoded");

        loader.classList.add('active');
        //5
        peticion.onload = function(){
            
            cargarUsuarios();
            formulario.nombre.value = '';
            formulario.edad.value = '';
            formulario.pais.value = '';
            formulario.correo.value = '';
        }
        //6
        peticion.onreadystatechange = function(){
            if(peticion.readyState == 4 && peticion.status == 200){
                loader.classList.remove('active');
                
            }
        }
        //7
        peticion.send(parametros);

    }else{
        error_box.classList.add('active');
        error_box.innerHTML = 'Por favor ingrese correctamente los datos';
    }
}

btn_cargar.addEventListener('click',cargarUsuarios);

formulario.addEventListener('submit',function(e){
    agregarUsuarios(e);
})

function formulario_valido(){
    if(usuario_nombre == ''){
        return false;
    }else if(isNaN(usuario_edad)){
        return false;
    }else if(usuario_pais == ''){
        return false;
    }else if(usuario_correo == ''){
        return false;
    }
    
    return true;
}