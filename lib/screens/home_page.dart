import 'package:e_commerce_store_app/models/product_model.dart';
import 'package:e_commerce_store_app/screens/update.dart';
import 'package:e_commerce_store_app/services/get_all_product.dart';
import 'package:e_commerce_store_app/widget/custom_cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  Future<List<ProductModel>>? getProductModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "New Trend",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: FutureBuilder<List<ProductModel>>(
          future: GetAllProduct().getallProduct(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> productmodel = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
                child: GridView.builder(
                  itemCount: productmodel.length,
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return UpdateProduct(product: productmodel[index] ,);
                            },
                          ));
                        },
                        child: CustomCart(
                          product: productmodel[index],
                        ));
                  },
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
