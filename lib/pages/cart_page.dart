import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_nike/models/cart.dart';

import '../models/shoe.dart';
import 'cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Carrito',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
             SizedBox(
              height: 20,
            ),

            Expanded(
              child:
               ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder:(context, index) {
               
               // obtener compra individual
                  Shoe individualShoe = value.getUserCart()[index];

                  // regresar item al carrito
                  return CartItem( shoe: individualShoe,);
           },
           ),
           )
          ],
        ),
      ),
    );
  }
}
