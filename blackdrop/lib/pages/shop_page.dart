import 'package:blackdrop/components/shoe_tile.dart';
import 'package:blackdrop/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsetsDirectional.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search'),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            '"Hard work outweighs talent — every time"',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Best Sellers 🔥",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "See all",
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 300,
          child: Expanded(
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Shoe shoe = Shoe(
                      name: "Nike BLAZER MID '77",
                      price: "Rs10,795",
                      imagePath: "Assets/Shoes/nike-blazer-mid-77.jpg");
                  return ShoeTile(
                    shoe: shoe,
                  );
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 25, left: 25, right: 25),
          child: Divider(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
