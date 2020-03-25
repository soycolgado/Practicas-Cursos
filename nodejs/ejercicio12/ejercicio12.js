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
    if (camino == "public/cargar") {
        grabarComentario(pedido, respuesta);
    } else {
        if (camino == "public/leercomentarios") {
            leerComentario(respuesta);
        } else {
            fs.stat(camino, error => {
                if (!error) {
                    fs.readFile(camino, (error, contenido) => {
                        if (error) {
                            respuesta.writeHead(500, { 'Content-Type': 'text/plain' });
                            respuesta.write('Error interno del servidor');
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
}

function grabarComentario(pedido, respuesta) {
    let info = "";
    pedido.on('data', datosParciales => {
        info += datosParciales;
    });
    pedido.on('end', () => {
        let formulario = querystring.parse(info);

        respuesta.writeHead(200, { 'Content-Type': 'text/html' });

        let pagina = `<!doctype html><html><head></head><body>
        Nombre:${formulario['nombre']}<br>
        Comentarios:${formulario['comentarios']}<br>
        <a href="index.html">Retornar</a>
        </body></html>`;

        respuesta.end(pagina);
        grabarEnArchivo(formulario);

    });
}

function leerComentario(respuesta) {
    fs.readFile('public/visitas.txt', (error, datos) => {
        respuesta.writeHead(200, { 'Content-Type': 'text/html' });
        respuesta.write('<!doctype html><html><head></head><body>');
        respuesta.write(datos);
        respuesta.write('</body></html>');
        respuesta.end();
    });
}

function grabarEnArchivo(formulario) {
    const datos = `nombre:${formulario['nombre']}<br>
    comentarios:${formulario['comentarios']}<hr>`;
    fs.appendFile('public/visitas.txt', datos, error => {
        if (error) {
            console.log(error);
        }
    })
}

console.log('Server Inicializado');