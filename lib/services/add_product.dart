import 'dart:convert';


import 'package:e_commerce_store_app/models/product_model.dart';

import 'package:http/http.dart' as http;

class AddProduct {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String description,
    required String img,
    required String category,
  }) async {
    http.Response response =
        await http.post(Uri.parse("https://fakestoreapi.com/products"), body: {
      "title": title,
      "price": price,
      "description": description,
      "image": img,
      "category": category
    }, headers: {
      "Accept": "application/json",
      "Content-Type": "multipart/form-data"
      
    });
    Map<String, dynamic> data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      
      return ProductModel.fromjson(data);
    }else{
      throw Exception(
          "this is a problem with status code ${response.statusCode}");
    }
    
  }
  
}
