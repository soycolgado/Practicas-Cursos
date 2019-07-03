function validaRegistro(){

	var usuario = document.querySelector('#usuarioRegistro').value;
	var password = document.querySelector('#passwordRegistro').value;
	var email = document.querySelector('#emailRegistro').value;
	var terminos = document.querySelector('#terminos').checked;

	if(usuario != ""){
		var caracteres = usuario.length;
		var expresion = /^[a-zA-Z0-9]*$/;
		if(caracteres > 6){
			document.querySelector("label[for = 'usuarioRegistro']").innerHTML += "<br>Escriba por favor menos de 6 caracteres";
			return false;
		}
		if(expresion.test(usuario)){
			document.querySelector("label[for = 'usuarioRegistro']").innerHTML += "<br>No escriba caracteres especiales";
			return false;
		}

	}

	if(password != ""){
		var caracteres = password.length;
		var expresion = /^[a-zA-Z0-9]*$/;
		if(caracteres < 6){
			document.querySelector("label[for = 'passwordRegistro']").innerHTML += "<br>Escriba por favor mas de 6 caracteres";
			return false;
		}
		if(expresion.test(usuario)){
			document.querySelector("label[for = 'usuarioRegistro']").innerHTML += "<br>No escriba caracteres especiales";
			return false;
		}

	}

	if(email != ""){
		var expresion =  /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
		
		if(expresion.test(email)){
			document.querySelector("label[for = 'emailRegistro']").innerHTML += "<br>No escriba caracteres especiales";
			
			return false;
		}

	}

	if(!terminos){
		document.querySelector("form").innerHTML += "<br>No se logro el registro, acepte terminos y condiciones";
		document.querySelector('#usuarioRegistro').value = usuario;
		document.querySelector('#passwordRegistro').value = password;
		document.querySelector('#emailRegistro').value = email;
		return false;
	}


	return true;
}