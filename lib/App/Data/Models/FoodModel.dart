class FoodModel {
  final String name;
  final double price;
  final String category;
  final String image;
  FoodModel(
      {required this.category,
      required this.image,
      required this.price,
      required this.name});

  factory FoodModel.fromjason(jsonData) {
    return FoodModel(
        category: jsonData['category'],
        image: jsonData['image'],
        price: jsonData['price'],
        name: jsonData['name']);
  }
}