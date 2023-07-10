import 'package:e_commerce_store_app/models/product_model.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class CustomCart extends StatelessWidget {
   CustomCart({super.key,required this.product});
ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          // margin: const EdgeInsets.only(top: 20),
          height: 140,
          width: 200,
          child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    product.title.substring(0,6),
                    maxLines: 2,
                    style: TextStyle(color: Colors.black26, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(r"$" "222"),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            right: 30,
            // top: -50,
            bottom: 120,
            child: Image.network(
             product.image ,
              height: 100,
              width: 100,
            ))
      ],
    );
  }
}
