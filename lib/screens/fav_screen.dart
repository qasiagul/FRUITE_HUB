
import 'package:flutter/material.dart';

import '../customs/custom_card.dart';
import '../data/data.dart';

class FavItems extends StatelessWidget {
    List<Product> _favItems = [];
  updateFavItems() {
    _favItems = productList.where((product) => product.isFav).toList();
  }
   FavItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                          child:  Row(
                              children: _favItems.map((e) {
                            return FruitComboCard(
                                title: e.title,
                                price: e.price.toString(),
                                image: e.imageUrl,
                                color: e.color,
                                route: e.route);
                          }).toList())  
                      
                      ),
        ],
      ),
    );
  }
}