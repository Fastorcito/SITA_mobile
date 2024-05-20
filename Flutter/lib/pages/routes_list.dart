import 'package:flutter/material.dart';
import 'package:flutter_app/models/routes_model.dart';
import 'package:flutter_app/services/api_service.dart';
import 'package:flutter_app/pages/route_detail.dart';

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
      ),
      body: FutureBuilder<List<RoutesModel>>(
        future: futureRoutes,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final routes = snapshot.data!;
            return ListView.builder(
              itemCount: routes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(routes[index].numeroRuta ?? 'Sin número'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RouteDetail(routeId: routes[index].id!),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
