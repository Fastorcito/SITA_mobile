require("dotenv").config();

const express = require("express");
const bodyParser = require("body-parser");
const routesRouter = require("./routes/routesRouter"); // Archivo donde definirás tus rutas

const app = express();

app.use(bodyParser.json());
app.use("/api/rutas", routesRouter); // Montar el enrutador de rutas en el endpoint /api/rutas

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Servidor corriendo en el puerto ${PORT}`);
});
