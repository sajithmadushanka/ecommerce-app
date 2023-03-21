import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

// ignore: must_be_immutable
class CardTile extends StatelessWidget {
  Shoe shoe;
  CardTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: Image.asset(shoe.imagePath),
          title: Text(shoe.name),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              Provider.of<Cart>(context, listen: false)
                  .removeritemfromCart(shoe);
            },
          ),
        ),
      ),
    );
  }
}
