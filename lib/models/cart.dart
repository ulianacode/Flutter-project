import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'items.dart';

class Cart extends ChangeNotifier {
  List<Item> itemShop = [
    Item(
      name: 'Bag',
      price: '1100',
      description:
          'Height 11.5 cm, width 18 cm, depth 6.5 cm, chain length 120 cm',
      imagePath: 'lib/images/photo1.jpg',
    ),
    Item(
      name: 'Shoes',
      price: '500',
      description: 'Best-seller',
      imagePath: 'lib/images/photo2.jpg',
    ),
    Item(
      name: 'Earrings',
      price: '600',
      description: 'Enchanting shine',
      imagePath: 'lib/images/photo3.jpg',
    ),
    Item(
      name: 'T-shirt',
      price: '99',
      description: 'Unisex',
      imagePath: 'lib/images/photo4.jpg',
    ),
  ];

  List<Item> userCart = [];

  List<Item> getItemsList() {
    return itemShop;
  }

  List<Item> getUserCart() {
    return userCart;
  }

  void addItemToCart(Item item) {
    userCart.add(item);
    notifyListeners();
  }

  void removeItemFromCart(Item item) {
    userCart.remove(item);
    notifyListeners();
  }
}
