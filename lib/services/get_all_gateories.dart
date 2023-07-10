import 'dart:convert';

import 'package:http/http.dart' as http;

class GetAllGategories {
  Future<List<dynamic>> getAllGategories() async {
    http.Response response = await http
        .get(Uri.parse("https://fakestoreapi.com/products/categories"));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          "this is a problem with status code ${response.statusCode}");
    }
  }
}
