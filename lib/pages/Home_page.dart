import 'package:flutter/material.dart';
import 'package:shop_nike/pages/bottom_nav_bar.dart';

import 'cart_page.dart';
import 'shop_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// esto selecciona el index para controlar los botones del nav bar
  int _selectedIndex = 0;

// este metodo va a actualizar o seleccionar el index cuando el usuario
// lo seleccione

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // navegar entre paginas

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(),
      body: _pages[_selectedIndex],
    );
  }
}
