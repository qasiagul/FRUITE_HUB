import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/customs/custom_addbutton.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_button.dart';
import 'package:fruite_hub_ecommerce_app/screens/order_list.dart';

class AddBasket extends StatefulWidget {
  AddBasket({required this.image, required this.title, required this.price});
  final String image;
  final String title;
  final String price;
  @override
  State<AddBasket> createState() => _AddBasketState();
}

class _AddBasketState extends State<AddBasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor, // Orange background
      body: SafeArea(
        child: Column(
          children: [
            // Back button and product image
            Container(
              padding: EdgeInsets.symmetric(vertical: 28),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 300), child: GoBack()),
                  Center(
                    child: Container(
                      // color: Colors.red,
                      height: 200,
                      width: 200,
                      child: SvgPicture.asset("assets/images/tropical.svg") ,

                      // decoration: const BoxDecoration(
                      //     color: Colors.orange,
                      //     shape: BoxShape.circle,
                      //     image: DecorationImage(image: )
                          // image: DecorationImage(
                            
                          //     image: AssetImage(
                          //       'assets/images/${widget.image}',
                                
                          //     ),
                          //     fit: BoxFit.cover)
                              // ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CounterFunction(),
                          Text(
                            '₦ ${widget.price}',
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // Ingredients list
                      const Text(
                        'One Pack Contains:',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.headingColor),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.headingColor,
                        ),
                      ),

                      const SizedBox(height: 20),
                      const Divider(
                        color: Colors.grey, // The color of the line
                        thickness: 1, // Right padding (optional)
                      ),
                      const SizedBox(height: 20),
                      // Description
                      const Text(
                        'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      // Add to Basket button and favorite icon
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  //here fav logic
                                });
                              },
                              child: Container(
                                width: 33,
                                height: 33,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.Container2Color, // Light orange background
                                ),
                                child: const Center(
                                  child: Icon(Icons.favorite_border_outlined,
                                      size: 19,
                                      color:AppColors.themeColor), // Orange plus icon
                                ),
                              ),
                            ),
                            Spacer(),
                            CustomButton(
                              text: 'Add to basket',
                              widget: OrderList(),
                              containerWidth: 219,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
