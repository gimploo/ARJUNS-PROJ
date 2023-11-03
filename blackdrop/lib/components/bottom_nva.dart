import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: GNav(
          color: Colors.grey[600],
          activeColor: Colors.grey.shade900,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            ),
          ]),
    );
  }
}
