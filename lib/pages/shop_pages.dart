import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_nike/models/cart.dart';
import 'package:shop_nike/pages/shoe_tile.dart';

import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //agregar zapato al carrito
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alerta de agregrado correctamente
    showDialog(
      context:  context,
      builder:  (context) => AlertDialog(
            title: const Text('Agregado Correctamente'),
            content: const Text('Verifica tu carrito'),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                //Barra de busqueda
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Buscar',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),

                // mensaje
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Text(
                    'Todos somos uno ... Uno somos todos',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),

                // Fotos
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Mejores Fotos',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'Ver Todos',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Expanded(
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        //genera los zapatos
                        Shoe shoe = value.getShoeList()[index];

                        // return shoe

                        return ShoeTile(
                          shoe: shoe,
                          onTap: () => addShoeToCart(shoe),
                        );
                      }),
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                )
              ],
            ));
  }
}
