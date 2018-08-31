function sumar(){
    var num1 = document.getElementById('numero1').value;
    num1 = parseFloat(num1);
    var num2 = document.getElementById('numero2').value;
    num2 = parseFloat(num2);
    var suma = num1 + num2;
    document.getElementById('resultado').value = suma;
}