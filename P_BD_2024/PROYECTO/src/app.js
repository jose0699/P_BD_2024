const bodyParser = require('body-parser');
const express = require('express');
const path = require('path');

const app = express();
const port = 3000;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

//incorporar rutas
app.use(require('./routes/index.routes'));

// Rutas de archivos estáticos
app.use(express.static(path.join(__dirname, '..', 'public')));
app.use('/controllers', express.static(path.join(__dirname,'..', 'public', 'controllers')));
app.use('/views', express.static(path.join(__dirname,'..', 'public', 'views')));
app.use('/styles', express.static(path.join(__dirname,'..', 'public', 'styles'), { strict: false }));
app.use('/images', express.static(path.join(__dirname, '..', 'public', 'images')));

// Iniciar el servidor
app.listen(port, () => {
    console.log(`Servidor iniciado en http://localhost:${port}/`);
});