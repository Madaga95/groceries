import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Aubergine", "1.99", "lib/image/aubergine.png", Colors.deepPurple],
    ["Choy", "3.99", "lib/image/choy.png", Colors.green],
    ["Fish", "5.99", "lib/image/fish.png", Colors.blueAccent],
    ["Melon", "5.99", "lib/image/melon.png", Colors.orange],
    ["Pois", "0.99", "lib/image/pois.png", Colors.lightGreen],
  ];

  // List of items in the cart

  final List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  // Add item to cart
  void addToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price of items in cart
  double totalPrice() {
    double total = 0;
    for (var item in _cartItems) {
      total += double.parse(item[1]);
    }
    return total;
  }
}
