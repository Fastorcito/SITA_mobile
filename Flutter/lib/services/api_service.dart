import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_app/models/routes_model.dart';

class ApiService {

  static const String baseUrl = 'http://localhost:3000/api';

  Future<List<RoutesModel>> fetchRoutes() async {
    final response = await http.get(Uri.parse('$baseUrl/rutas'));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      return body.map((dynamic item) => RoutesModel.fromJson(item)).toList();
    } else {
      throw Exception('Error al cargar las rutas');
    }
  }

  Future<RoutesModel> fetchRouteDetail(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/rutas/$id'));
    if (response.statusCode == 200) {
      return RoutesModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Error al cargar los detalles de las rutas');
    }
  }

}
