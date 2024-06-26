const express = require('express');
const router = express.Router();
const path = require('path');

module.exports = router;

//Controladores
    const select = require('../controllersbd/select');

router.get('/Ceramica_Real', (req, res) => {
    const adminPath = path.join(__dirname, '../../public/views/principal.html');
    res.sendFile(adminPath);
});

/*------------------------------------------------------------------------------------------------------------*/
/*                                          Rutas de Pieza                                                    */ 
/*------------------------------------------------------------------------------------------------------------*/
router.get('/Ceramica_Real/Pieza', (req, res) => {
    const adminPath = path.join(__dirname, '../../public/views/pieza.html');
    res.sendFile(adminPath);
});
router.post('/Ceramica_Real/Pieza', (req, res) => {
    const datos = req.body;
  switch (parseInt(datos.pet)){
    case 1:
        select.COLECCION(req, res);
    break;

    case 2:

    break;
  }
});

/*------------------------------------------------------------------------------------------------------------*/
/*                                        Rutas de Vajilla                                                    */ 
/*------------------------------------------------------------------------------------------------------------*/
router.get('/Ceramica_Real/Vajilla', (req, res) => {
    const adminPath = path.join(__dirname, '../../public/views/vajilla.html');
    res.sendFile(adminPath);
});
router.post('/Ceramica_Real/Vajilla', (req, res) => {

});