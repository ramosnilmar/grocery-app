import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = const [
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["Banana", "2.50", "lib/images/banana.png", Colors.yellow],
    ["Chicken", "12.80", "lib/images/chicken.png", Colors.brown],
    ["Water", "1.00", "lib/images/water.png", Colors.blue],
  ];

  final List _carItems = [];

  get cartItems => _carItems;

  get shopItems => _shopItems;

  void addItemToCart(int index) {
    _carItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _carItems.removeAt(index);
    notifyListeners();
  }

  void clearCart() {
    _carItems.clear();
    notifyListeners();
  }

  String get totalPrice {
    double total = 0;
    for (var item in _carItems) {
      total += double.parse(item[1]);
    }
    return total.toStringAsFixed(2);
  }
}
