class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final String gategoery;
  
  // final RatingModel rate;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.gategoery,
      // required this.rate
      });

  factory ProductModel.fromjson(jsonData) {
    return ProductModel(
      id: jsonData["id"],
      title: jsonData["title"],
      price: jsonData["price"],
      description: jsonData["description"],
      image: jsonData["image"],
      gategoery: jsonData["category"]
      // rate: RatingModel.fromjson(jsonData["rating"]),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromjson(jsonData) {
    return RatingModel(rate: jsonData["rate"], count: jsonData["count"]);
  }
}