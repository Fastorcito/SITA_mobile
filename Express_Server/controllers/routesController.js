const pool = require("../dbConfig");

const routesController = {
  getAllRoutes: (req, res) => {
    const query = "SELECT * FROM rutas";
    pool.query(query, (error, results) => {
      if (error) {
        console.error("Error al obtener las rutas:", error);
        return res.status(500).json({ message: "Error interno del servidor" });
      }
      res.json(results);
    });
  },

  getRouteById: (req, res) => {
    const { id } = req.params;
    const query = "SELECT * FROM rutas WHERE id = ?";
    pool.query(query, [id], (error, results) => {
      if (error) {
        console.error("Error al obtener la ruta:", error);
        return res.status(500).json({ message: "Error interno del servidor" });
      }
      if (results.length === 0) {
        return res.status(404).json({ message: "Ruta no encontrada" });
      }
      res.json(results[0]);
    });
  },
};

module.exports = routesController;
