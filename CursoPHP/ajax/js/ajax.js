var btn = document.getElementById('btn_cargar_usuarios');
var loader = document.getElementById('loader');

btn.addEventListener('click',function(){
    var peticion = new XMLHttpRequest();
    peticion.open('GET','http://www.json-generator.com/api/json/get/clRoNrNjJu?indent=2');
    loader.classList.add('active');
    peticion.onreadystatechange = function(){
        if(peticion.readyState == 4 && peticion.status == 200){
            loader.classList.remove('active');
        }
    };
    peticion.send();
});