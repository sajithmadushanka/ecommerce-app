import 'package:flutter/material.dart';
import 'package:shop/pages/cart_page.dart';

import '../components/btn_nav_bar.dart';
import 'shop_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // this selected index for control the bottomNav
  int _selectedIndex = 0;
  navigateBtnBar(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    //home page
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtonNavBar(
        onTapChage: (index) => navigateBtnBar(index),
      ),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Icon(Icons.menu, color: Colors.black),
                ));
          })),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(
                    child: Image.asset(
                  'lib/assets/nike.png',
                  color: Colors.white,
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                //other pages
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.white),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
