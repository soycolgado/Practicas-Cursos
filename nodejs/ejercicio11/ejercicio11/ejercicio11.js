const http = require('http');
const url = require('url');
const fs = require('fs');
const querystring = require('querystring');

const mime = {
    'html': 'text/html',
    'css': 'text/css',
    'jpg': 'image/jpg',
    'ico': 'image/x-icon',
    'mp3': 'audio/mpeg3',
    'mp4': 'video/mp4'
};

const servidor = http.createServer((pedido, respuesta) => {
    const obj = url.parse(pedido.url);
    let camino = `public${obj.pathname}`;
    if (camino == 'public/') {
        camino = 'public/index.html';
    }
    encaminar(pedido, respuesta, camino);

});

servidor.listen(8888);

function encaminar(pedido, respuesta, camino) {
    if (camino == 'public/recuperardatos') {
        recuperarDatos(pedido, respuesta);
    } else {
        fs.stat(camino, error => {
            if (!error) {
                fs.readFile(camino, (error, contenido) => {
                    if (error) {
                        respuesta.writeHead(500, { 'Content-Type': 'text/plain' });
                        respuesta.write('Problema interno del servidor');
                        respuesta.end();
                    } else {
                        let vec = camino.split('.');
                        let extension = vec[vec.length - 1];
                        let mimearchivo = mime[extension];
                        respuesta.writeHead(200, { 'Content-Type': mimearchivo });
                        respuesta.write(contenido);
                        respuesta.end();
                    }
                });
            } else {
                respuesta.writeHead(404, { 'Content-Type': 'text/html' });
                respuesta.write('<!doctype html><html><head></head><body>Recurso inexistente</body></html>');
                respuesta.end();
            }
        });
    }
}

function recuperarDatos(pedido, respuesta) {
    let info = "";
    pedido.on('data', datosParciales => {
        info += datosParciales;
    });
    pedido.on('end', () => {
        const formulario = querystring.parse(info);
        respuesta.writeHead(200, { 'Content-Type': 'text/html' });
        respuesta.write(`<!doctype html><html><head></head><body>
        Nombre de usuario:${formulario['nombre']}<br>
       Clave:${formulario['clave']}<br>
       <a href="index.html">Retornar</a>
       </body></html>`);
        respuesta.end();
    });

}
console.log('Servidor Inicializado');