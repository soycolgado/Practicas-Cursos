const http = require('http');
const url = require('url');
const fs = require('fs');

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
    let camino = `static${obj.pathname}`;
    if (camino == 'static/') {
        camino = "static/index.html";
    }
    fs.stat(camino, error => {
        if (!error) {
            fs.readFile(camino, (error, contenido) => {
                if (error) {
                    respuesta.writeHead(500, { 'Content-Type': 'text/plain' });
                    respuesta.write('Imposible realizar la conexion');
                    respuesta.end();
                } else {
                    let vec = camino.split('.');
                    let extension = vec[vec.length - 1];
                    let mimearchivo = mime[extension];
                    respuesta.writeHead(200, { 'Content-Type': mimearchivo });
                    respuesta.write(contenido);
                    respuesta.end();
                }
            })
        } else {
            respuesta.writeHead(404, { 'Content-Type': 'text/html' });
            respuesta.write('<!doctype html><html><head></head><body>Recurso inexistente</body></html>');
            respuesta.end();
        }
    });
});

servidor.listen(8888);
console.log('Servidor inicializado');