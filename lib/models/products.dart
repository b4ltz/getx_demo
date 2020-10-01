class Product {
  Product({
    this.id,
    this.productName,
    this.description,
    this.price,
  });

  int id;
  String productName;
  String description;
  double price;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        productName: json["product_name"],
        description: json["description"],
        price: json["price"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_name": productName,
        "description": description,
        "price": price,
      };
}
