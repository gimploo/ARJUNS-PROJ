import 'package:blackdrop/models/shoe.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                shoe.imagePath,
                height: 220,
                // color: Colors.black,
              )),

          //price + details
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text(
                      shoe.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),

                    SizedBox(height: 5),

                    //price
                    Text(shoe.price,
                        style:
                            TextStyle(fontSize: 16, color: Colors.grey[600])),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                  child: Icon(
                    Icons.arrow_right_alt_rounded,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
