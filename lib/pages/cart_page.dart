import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/card_tile.dart';
import '../models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Cart',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: value.getUserCard().length,
            itemBuilder: (context, index) {
              return CardTile(
                shoe: value.getUserCard()[index],
              );
            },
          ))
        ],
      ),
    );
  }
}
