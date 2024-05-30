import 'package:flutter/material.dart';
import 'package:flutter_app/models/routes_detail_model.dart';
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
      body: FutureBuilder<RoutesDetailModel>(
        future: ApiService().fetchRouteDetail(routeId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final routeDetail = snapshot.data!;

            return Padding(
              padding: EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: Icon(Icons.location_city, color: Colors.blue),
                      title: Text(
                        'Ciudad',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(routeDetail.ciudad ?? 'N/A'),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: Icon(Icons.directions_bus, color: Colors.green),
                      title: Text(
                        'Tipo de Transporte',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(routeDetail.tipoTransporte ?? 'N/A'),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: Icon(Icons.confirmation_number, color: Colors.red),
                      title: Text(
                        'Número de Ruta',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(routeDetail.numeroRuta ?? 'N/A'),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: Icon(Icons.attach_money, color: Colors.orange),
                      title: Text(
                        'Tarifa',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(routeDetail.tarifa ?? 'N/A'),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: Icon(Icons.business, color: Colors.purple),
                      title: Text(
                        'Agencia',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(routeDetail.agencia ?? 'N/A'),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: Icon(Icons.info, color: Colors.teal),
                      title: Text(
                        'Información Adicional',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(routeDetail.informacionAdicional ?? 'N/A'),
                    ),
                  ),
                  if (routeDetail.diasOperacion != null && routeDetail.horario != null)
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.access_time, color: Colors.green),
                        title: Text(
                          'Horario',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('${routeDetail.diasOperacion} - ${routeDetail.horario}'),
                      ),
                    ),
                  if (routeDetail.direccion != null && routeDetail.itinerario != null)
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.map, color: Colors.orange),
                        title: Text(
                          'Itinerario',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dirección: ${routeDetail.direccion}'),
                            Text('Itinerario: ${routeDetail.itinerario}'),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}