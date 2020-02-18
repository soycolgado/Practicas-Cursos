"use strict";
(function() {
    const miFuncion = function(a) {
        return a;
    };
    const miFuncionF = (a) => a.toUpperCase();
    console.log(miFuncionF('Flecha'));
    const sumarN = function(a, b) {
        return a + b;
    };
    const sumarF = (a, b) => a + b;

    const hulk = {
        nombre: 'Hulk',
        smash() {
            setTimeout(() => {
                console.log(`${ this.nombre } smash!!!`);

            }, 1000);
        }
    }

    hulk.smash();

})();