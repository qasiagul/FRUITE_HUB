import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';

class BasketItem extends StatelessWidget {
  final String image;
  final String title;
  final String packs;
  final String price;

  BasketItem({
    required this.image,
    required this.title,
    required this.packs,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(image), // Use your SVG or PNG here
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(packs, style: TextStyle(color:Colors.black)),
              ],
            ),
          ),
          Text(
            price,
            style: TextStyle(color: AppColors.headingColor, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
