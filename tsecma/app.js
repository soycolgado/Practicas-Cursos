"use strict";
var nombre = "Ricardo Tapia";
var edad = 23;
var PERSONAJE = {
    nombre: nombre,
    edad: edad
};
var resultadoDoble = function (a, b) { return (a + b) * 2; };
function getAvenger(nombre, poder, arma) {
    if (arma === void 0) { arma = "arco"; }
}
var Rectangulo = /** @class */ (function () {
    function Rectangulo(base, altura) {
        this.base = base;
        this.altura = altura;
    }
    Rectangulo.prototype.calcularArea = function () {
        this.area = this.base * this.altura;
        return this.area;
    };
    return Rectangulo;
}());
