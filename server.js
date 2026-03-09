const express = require('express');
const app = express();
const port = 5000;

app.get('/', (req, res) => {
  res.send('¡Hola! Mi servidor Express está vivo en Portainer 🚀');
});

app.listen(port, () => {
  console.log(`API escuchando en el puerto ${port}`);
});