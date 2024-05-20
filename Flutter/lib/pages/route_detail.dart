import 'package:flutter/material.dart';
import 'package:flutter_app/models/routes_model.dart';
import 'package:flutter_app/services/api_service.dart';

class RouteDetail extends StatelessWidget {
  final int routeId;

  RouteDetail({required this.routeId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle de la Ruta'),
      ),
      body: FutureBuilder<RoutesModel>(
        future: ApiService().fetchRouteDetail(routeId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final route = snapshot.data!;
            return Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ciudad: ${route.ciudad ?? 'N/A'}'),
                  Text('Tipo de Transporte: ${route.tipoTransporte ?? 'N/A'}'),
                  Text('Número de Ruta: ${route.numeroRuta ?? 'N/A'}'),
                  Text('Tarifa: ${route.tarifa ?? 'N/A'}'),
                  Text('Agencia: ${route.agencia ?? 'N/A'}'),
                  Text('Información Adicional: ${route.informacionAdicional ?? 'N/A'}'),
                  Text('Creado en: ${route.creadoEn ?? 'N/A'}'),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
