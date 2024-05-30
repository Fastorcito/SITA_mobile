import 'package:flutter/material.dart';
import 'package:flutter_app/models/routes_model.dart';
import 'package:flutter_app/services/api_service.dart';
import 'package:flutter_app/pages/route_detail.dart';
import 'package:flutter_app/pages/map_view.dart';

class RoutesList extends StatefulWidget {
  @override
  _RoutesListState createState() => _RoutesListState();
}

class _RoutesListState extends State<RoutesList> {
  late Future<List<RoutesModel>> futureRoutes;

  @override
  void initState() {
    super.initState();
    futureRoutes = ApiService().fetchRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rutas'),
        backgroundColor: Color(0xFFE3FEF7),
      ),
      backgroundColor: Color(0xFF003C43),
      body: FutureBuilder<List<RoutesModel>>(
        future: futureRoutes,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final routes = snapshot.data!;
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: routes.length,
                    itemBuilder: (context, index) {
                      final route = routes[index];
                      return Card(
                        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        color: Color(0xFFE3FEF7),
                        child: ListTile(
                          leading: Icon(
                            Icons.directions_bus,
                            color: Color(0xFF003C43),
                          ),
                          title: Text(
                            route.numeroRuta ?? 'Sin número',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(route.ciudad ?? 'Sin ciudad'),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RouteDetail(routeId: route.id!),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center, // Alinea el botón en el centro
                  children: [
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MapView(), // Reemplaza MapaInteractivo con el nombre de tu vista
                            ),
                          );
                        },
                        child: Text('Mapa interactivo'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
              ],
            );
          }
        },
      ),
    );
  }
}
