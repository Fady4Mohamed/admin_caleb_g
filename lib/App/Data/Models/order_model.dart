class OrderModel {
  final String cliencart;
  final double price;
  final String date;
  final String adresse;
  final String id;
  OrderModel(
      {required this.id,
      required this.date,
      required this.adresse,
      required this.price,
      required this.cliencart});

  factory OrderModel.fromjson(jsonData) {
    return OrderModel(
        date: jsonData['date'],
        adresse: jsonData['adresse'],
        price: jsonData['price'],
        id: jsonData['orderid'],
        cliencart: jsonData['cart']);
  }
}