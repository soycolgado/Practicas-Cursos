const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send(`<!doctype html><head></head><body><h1>Mi primera pagina</h1></body></html>`);
});

const server = app.listen(8888, () => {
    console.log('Servidor inicializado');
})