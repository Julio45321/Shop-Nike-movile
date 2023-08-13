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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) => IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),)
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(    
              children: [
                // Logo 
            DrawerHeader(
              child: Image.asset('lib/images/logonike.png',
                     color: Colors.white,              
              ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Divider(
                  color: Colors.grey[800],
                ),
                ),
                // otras paginas 
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: 
                      Icon(Icons.home, color: Colors.white,),
                      title: Text('Home',style: TextStyle(color: Colors.white),),
                  ),
                ),

                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Divider(
                  color: Colors.grey[800],
                ),
                ),
                // otras paginas 
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: 
                      Icon(Icons.info, color: Colors.white,),
                      title: Text('Información',style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
            

                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Divider(
                  color: Colors.grey[800],
                ),
                ),
                // otras paginas 
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, bottom: 25),
                  child: ListTile(
                    leading: 
                      Icon(Icons.logout, color: Colors.white,),
                      title: Text('Cerrar Sesion',style: TextStyle(color: Colors.white),),
                  ),
                ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
