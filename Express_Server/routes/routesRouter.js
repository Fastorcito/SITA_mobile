const express = require("express");
const router = express.Router();
const routesController = require("../controllers/routesController"); // Archivo donde definirás las funciones de controlador para cada ruta

// Rutas para la funcionalidad informativa
router.get("/", routesController.getAllRoutes);
router.get("/:id", routesController.getRouteById);

// Rutas para la funcionalidad de direcciones
// router.post("/directions", routesController.getDirections);
// router.get("/:id/detalles", routesController.getRouteDetails);

module.exports = router;
