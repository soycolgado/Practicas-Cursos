"use strict";
var miFuncion = function (a) { return a; };
console.log(miFuncion('nestor'));
var miFuncion2 = function (a, b) { return a + b; };
var miFuncion3 = function (nombre) {
    nombre = nombre.toUpperCase();
    return nombre;
};
var Hulk = {
    nombre: "Bruce",
    smash: function () {
        var _this = this;
        setTimeout(function () {
            console.log(_this.nombre + "Smash!!!!!!");
        }, 1500);
    }
};
Hulk.smash();
