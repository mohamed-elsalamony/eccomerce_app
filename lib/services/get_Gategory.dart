import 'dart:convert';

import 'package:e_commerce_store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetGategory {
  Future<List<ProductModel>> getAllGatogery(
      {required String nameGatogery}) async {
    http.Response response = await http.get(
        Uri.parse("https://fakestoreapi.com/products/category/$nameGatogery"));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<ProductModel> productLists = [];
      for (int i = 0; i < data.length; i++) {
        productLists.add(ProductModel.fromjson(data[i]));
      }
      return productLists;
    }else{
     throw Exception(
          "this is a problem with status code ${response.statusCode}");
    }
  }
}
