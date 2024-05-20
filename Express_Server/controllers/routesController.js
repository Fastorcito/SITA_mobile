const connection = require('../dbConfig');

const routesController = {
  getAllRoutes: async (req, res) => {
    const query = 'SELECT * FROM rutas';
    connection.query(query, (error, results) => {
      if (error) {
        console.error('Error al obtener las rutas:', error);
        return res.status(500).json({ message: 'Error interno del servidor' });
      }
      res.json(results);
    });
  },
  
  getRouteById: async (req, res) => {
    const { id } = req.params;
    const query = 'SELECT * FROM rutas WHERE id = ?';
    connection.query(query, [id], (error, results) => {
      if (error) {
        console.error('Error al obtener la ruta:', error);
        return res.status(500).json({ message: 'Error interno del servidor' });
      }
      if (results.length === 0) {
        return res.status(404).json({ message: 'Ruta no encontrada' });
      }
      res.json(results[0]);
    });
  }
}

module.exports = routesController;