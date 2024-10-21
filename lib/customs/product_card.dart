import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/customs/custom_card.dart';
import 'package:fruite_hub_ecommerce_app/data/data.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  
  List<Product> _productList = productList;

  List<Product> _filteredList = [];



  updateFilteredList(String category) {
    _filteredList =
        productList.where((product) => product.category == category).toList();
    setState(() {});
  }    
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
          children: 
            productList.map((e){
              return FruitComboCard(title: e.title, price: e.price.toString(), image: e.imageUrl, color:e.color, route:e.route);
            }).toList()
            
                      ),
                    ),

        ],
      ),
    );
  }
}