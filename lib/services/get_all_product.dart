import 'dart:convert';

import 'package:e_commerce_store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetAllProduct {
  Future<List<ProductModel>> getallProduct() async {
    http.Response response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<ProductModel> productList = [];
      for (int i = 0; i < data.length; i++) {
        productList.add(ProductModel.fromjson(data[i]));
      }
      return productList;
    } else {
      throw Exception(
          "this is a problem with status code ${response.statusCode}");
    }
  }
}
