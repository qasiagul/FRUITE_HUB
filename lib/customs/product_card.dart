import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/data/data.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  
  List<Product> _productList = productList;
  List _categories = productList.map((product) => product.category).toSet().toList();
      int selectedIndex = -1; // Track the selected text index
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          SizedBox(
            width:screenWidth * 5,
            height: screenHeight * 0.1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:_categories.length,
              itemBuilder: (context,index){
               return GestureDetector(
                onTap: (){
                  setState(() {
                  selectedIndex = index;
                  });
                },
                child:Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: selectedIndex == index ? AppColors.themeColor : Colors.white,
                          width: selectedIndex == index ? 3.0 : 0.0,
                          ),
                        ),
                    ),
                    child: Text(
                      _categories[index],
                      style: TextStyle(
                        fontSize: selectedIndex == index ? 32 : 22 ,//change font size
                        color: selectedIndex == index ? AppColors.headingColor : AppColors.greyColor,
                        fontWeight: selectedIndex == index ? FontWeight.bold : FontWeight.normal,
                        ),
                        ),
                  ),
                ),
               );
              }
              ),
          ),
          
        ],
      ),
    );
  }
}