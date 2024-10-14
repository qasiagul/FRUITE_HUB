import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/customs/basket_item.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_button.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_textfeild.dart';
import 'package:fruite_hub_ecommerce_app/screens/home.dart';
import 'package:fruite_hub_ecommerce_app/screens/order_complete.dart';

class OrderList extends StatelessWidget {
  final TextEditingController addressController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController ccvController = TextEditingController();
  OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.1,
            width: screenWidth * 5,
            color: AppColors.themeColor,
            child: const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                GoBack(),
                SizedBox(
                  width: 40,
                ),
                Text(
                  'My Basket',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
            ),
            child: ListView(
              children: [
                BasketItem(
                    image: 'assets/images/Quinoa.png',
                    title: 'Quinoa Fruit Salad',
                    packs: '2packs',
                    price: '₦20,000'),
                const Divider(),
                BasketItem(
                    image: 'assets/images/honey.png',
                    title: 'honey Lime combo',
                    packs: '2packs',
                    price: '₦20,000'),
                const Divider(),
                BasketItem(
                    image: 'assets/images/melo.png',
                    title: 'Melo Fruit Salad',
                    packs: '2packs',
                    price: '₦20,000'),
                const SizedBox(
                  height: 380,
                ),
                Row(
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          '₦60,000',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: AppColors.headingColor,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0),
                            ),
                          ),
                          builder: (context) {
                            return Padding(
                              padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)),
                                padding: const EdgeInsets.all(20),
                                height: 400,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    // Close button
                                    Center(
                                      child: Container(
                                        width: 40,
                                        height: 4,
                                        decoration: BoxDecoration(
                                          color: AppColors.themeColor,
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    const Text(
                                      'Delivery address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                        color: AppColors.headingColor,
                                      ),
                                    ),
                                    const SizedBox(height: 20),

                                    // Delivery address field
                                    TextFeildCustom(
                                        controller: addressController,
                                        text: 'address'),
                                    const SizedBox(height: 15),
                                    const Text(
                                      'Number we can call',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                        color: AppColors.headingColor,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    // Phone number field
                                    TextFeildCustom(
                                        controller: numberController,
                                        text: 'number'),

                                    const SizedBox(height: 20),
                                    // Payment buttons
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                            child: CustomButton(
                                          text: 'Pay on delivery',
                                          widget: OrderComplete(),
                                          containerWidth: 125,
                                          background: Colors.white,
                                          color: AppColors.themeColor,
                                        )),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true,
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.vertical(
                                                    top: Radius.circular(25.0),
                                                  ),
                                                ),
                                                builder: (context) {
                                                  return Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom:
                                                          MediaQuery.of(context)
                                                              .viewInsets
                                                              .bottom,
                                                    ),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)),
                                                        padding: EdgeInsets.all(20),               
                                                      height: 530,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          // Close button
                                                          Center(
                                                            child: Container(
                                                              width: 40,
                                                              height: 4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: AppColors
                                                                    .themeColor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2),
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          const Text(
                                                            'Card Holders Name',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 20,
                                                              color: AppColors
                                                                  .headingColor,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),

                                                          // Delivery address field
                                                          TextFeildCustom(
                                                              controller:
                                                                  addressController,
                                                              text: 'Name'),
                                                          const SizedBox(
                                                              height: 15),
                                                          const Text(
                                                            'Card Number',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 20,
                                                              color: AppColors
                                                                  .headingColor,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          // Phone number field
                                                          TextFeildCustom(
                                                              controller:
                                                                  numberController,
                                                              text: 'Number'),
                                                          const SizedBox(
                                                              height: 20),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Column(
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                         const Text(
                                                            'Date',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 20,
                                                              color: AppColors
                                                                  .headingColor,
                                                            ),
                                                          ),
                                                                  SizedBox(
                                                                      height: 56,
                                                                      width:
                                                                          134, // Adjust the width as needed
                                                                      child:
                                                                          TextField(
                                                                        controller:
                                                                            dateController,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          filled:
                                                                              true,
                                                                          fillColor:
                                                                              AppColors
                                                                                  .fillColor,
                                                                          labelText:
                                                                              'date',
                                                                          border:
                                                                              const OutlineInputBorder(),
                                                                          hoverColor:
                                                                              AppColors
                                                                                  .themeColor,
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0), // Rounded borders
                                                                            borderSide:
                                                                                BorderSide.none, // No visible border
                                                                          ),
                                                                          contentPadding: const EdgeInsets
                                                                              .symmetric(
                                                                              vertical:
                                                                                  15.0,
                                                                              horizontal:
                                                                                  20.0), // Padding inside the field
                                                                        ),
                                                                      )),
                                                                ],
                                                              ),
                                                              Column(
                                                                 mainAxisAlignment: MainAxisAlignment.start,
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                         const Text(
                                                            'CCV',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 20,
                                                              color: AppColors
                                                                  .headingColor,
                                                            ),
                                                          ),
                                                                  SizedBox(
                                                                      height: 56,
                                                                      width:
                                                                          134, // Adjust the width as needed
                                                                      child:
                                                                          TextField(
                                                                        controller:
                                                                            dateController,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          filled:
                                                                              true,
                                                                          fillColor:
                                                                              AppColors
                                                                                  .fillColor,
                                                                          labelText:
                                                                              '123',
                                                                          border:
                                                                              const OutlineInputBorder(),
                                                                          hoverColor:
                                                                              AppColors
                                                                                  .themeColor,
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0), // Rounded borders
                                                                            borderSide:
                                                                                BorderSide.none, // No visible border
                                                                          ),
                                                                          contentPadding: const EdgeInsets
                                                                              .symmetric(
                                                                              vertical:
                                                                                  15.0,
                                                                              horizontal:
                                                                                  20.0), // Padding inside the field
                                                                        ),
                                                                      )),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(height: 30,),
                                                          Container(
                                                            width: 375,
                                                            height: 96,
                                                            decoration: BoxDecoration(
                                                            color: AppColors.themeColor,
                                                            borderRadius: BorderRadius.circular(20),
                                                            ),
                                                            child: CustomButton(text: 'Complete Order', widget: HomeScreen(), containerWidth: 135,),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            child: Container(
                                              width: 115,
                                              height: 56,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color:
                                                          AppColors.themeColor,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: const Center(
                                                  child: Text(
                                                'Pay with card',
                                                style: TextStyle(
                                                    color: AppColors.themeColor,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 199,
                        height: 56,
                        decoration: BoxDecoration(
                            color: AppColors.themeColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text(
                          'Checkout',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
