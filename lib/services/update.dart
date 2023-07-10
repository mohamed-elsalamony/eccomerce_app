import 'package:e_commerce_store_app/helpers/api.dart';
import 'package:e_commerce_store_app/models/product_model.dart';

class UpdateProductt {
  Future<ProductModel> put(
      {required String title,
      required String price,
      required String description,
      required String category,
      required String img}) async {
    Map<String, dynamic> data = await Api().put(
      url: "https://fakestoreapi.com/products/:id",
      body: {
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": img
      },
    );
    return ProductModel.fromjson(data);
  }
}
