import 'package:flutter/material.dart';
import 'package:shop/models/cart.dart';

import 'pages/intro_page.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
        home: IntroPage(),
      ),
    );
  }
}
