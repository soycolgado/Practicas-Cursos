var formulario = document.getElementById('formulario'),
    nombre = formulario.nombre;
    correo = formulario.correo;
    sexo = formulario.sexo;
    terminos = formulario.terminos,
    error = document.getElementById('error');

    function validarNombre(e){
        if(nombre.value == "" || nombre.value == null){
            error.style.display = "block";
            error.innerHTML += '<li>Por favor completa el nombre</li>';
            e.preventDefault();
        }
    }

    formulario.addEventListener('submit',validarNombre);