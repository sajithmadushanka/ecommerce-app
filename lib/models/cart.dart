import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // item list
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Joliy",
        price: '122',
        imagePath: 'lib/assets/shose1.jpg',
        description: 'better shose with gift precent '),
    Shoe(
        name: "Gome Play",
        price: '460',
        imagePath: 'lib/assets/shose2.jpg',
        description: 'better  to sports and outdoor pciks '),
    Shoe(
        name: "Blue king",
        price: '492',
        imagePath: 'lib/assets/shose3.jpg',
        description: 'become to king of your gang blue... king '),
  ];

  //list of item on cart
  List<Shoe> usercard = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCard() {
    return usercard;
  }

  //add item into cart
  void additemtoCart(Shoe shoe) {
    usercard.add(shoe);
    notifyListeners();
  }

  // remover item from cart
  void removeritemfromCart(Shoe shoe) {
    usercard.remove(shoe);
    notifyListeners();
  }
}
