class cartmodel{
  final int amount;
  final String foodid;

  cartmodel({required this.amount, required this.foodid});

  factory cartmodel.fromjason(jsonData) {
    return cartmodel(
        amount: jsonData['amount'],
        foodid: jsonData['foodid'],
        );
  }
}