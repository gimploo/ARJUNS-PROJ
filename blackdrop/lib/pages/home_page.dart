import 'package:blackdrop/components/bottom_nva.dart';
import 'package:blackdrop/pages/cart_page.dart';
import 'package:blackdrop/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void navigateBottomBar(int index) {

    setState(() {
      _selectedIndex = index;

    });
  }

  final List<Widget> _pages = [

    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Icon(Icons.menu,
            color: Colors.black),
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'Assets/Logo/BlackDrop_Logo-Transparent.png',
                    color: Colors.white,
                  ),
                  ),

                  Divider(
                    color: Colors.grey[800],
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                         'Home',
                         style: TextStyle(
                          color: Colors.white,
                         ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text(
                         'About',
                         style: TextStyle(
                          color: Colors.white,
                         ),
                      ),
                    ),
                  ),

              ],
            ),

            Padding(
                padding: EdgeInsets.only(left: 25, bottom: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                     'Logout',
                     style: TextStyle(
                      color: Colors.white,
                     ),
                  ),
                ),
              ),

          ],
        ),
      ),
      bottomNavigationBar: MyBottomNav(
        onTabChange: (index) => navigateBottomBar(index),
        ),
      body: _pages[_selectedIndex],
    );
  }
}