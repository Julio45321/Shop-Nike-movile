import 'dart:developer';

import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // lista de zapatos en venta
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Doker',
        price: '250',
        description: 'Cool Drink',
        imagePath: 'lib/images/tenis1.jpg'),
    Shoe(
        name: 'Nike Drinkerl',
        price: '290',
        description: 'Cool Shoe add',
        imagePath: 'lib/images/tenis3.jpeg'),
    Shoe(
        name: 'Nike Almakin',
        price: '430',
        description: 'Cool Adeiltem',
        imagePath: 'lib/images/tenis6.jpg')
  ];
  // lista de zapatos en el carrito
  List<Shoe> userCart = [];

  // obtener lista de zapatos en venta
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // generar carrito
  List<Shoe> getUserCart() {
    return userCart;
  }

  // agregar zapatos al carrito
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //removes zapatos del carrito
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
    
  }
}
