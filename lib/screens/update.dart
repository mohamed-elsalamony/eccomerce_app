import 'package:e_commerce_store_app/models/product_model.dart';
import 'package:e_commerce_store_app/services/update.dart';
import 'package:e_commerce_store_app/widget/custom_textFormField.dart';
import 'package:flutter/material.dart';

class UpdateProduct extends StatelessWidget {
  UpdateProduct(
      {super.key, this.title, this.decs, this.price, this.img, this.product});
  String? title;
  String? decs;
  String? price;
  String? img;
  ProductModel? product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Update product",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormFiledd(
              hintText: "productName",
              onChanged: (p0) {
                title = p0;
              },
            ),
            TextFormFiledd(
              hintText: "description",
              onChanged: (p0) {
                decs = p0;
              },
            ),
            TextFormFiledd(
              hintText: "price",
              onChanged: (p0) {
                price = p0;
              },
              keyboardType: TextInputType.number,
            ),
            TextFormFiledd(
              hintText: "image",
              onChanged: (p0) {
                img = p0;
              },
            ),
            GestureDetector(
              onTap: () {
                UpdateProductt().put(
                    title: title!,
                    price: price!,
                    description: decs!,
                    category: product!.gategoery,
                    img: img!);
              },
              child: Container(
                height: 50,
                width: 350,
                child: Center(child: Text("Update Product")),
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(8)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
