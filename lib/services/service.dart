//constants
import 'dart:developer';

import '../models/models.dart';
import 'package:http/http.dart' as http;

class ApiConstants {
  static String baseUrl = 'https://jsonplaceholder.typicode.com';
  static String usersEndpoint = '/users';
}

//api call

class ApiService {
  Future<List<Users>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<Users> model = usersFromJson(response.body);
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
