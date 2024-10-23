
import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_button.dart';
import 'package:fruite_hub_ecommerce_app/screens/login.dart';


class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: screenWidth * 5,
            height: screenHeight * 0.6,
            decoration: const BoxDecoration(
              color: AppColors.themeColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
               Image.asset(
                'assets/images/main1.png',
                  width: 301,
                  height: 260,
               ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/buckit_shadow.png',
                  width: 301,
                  height: 12,
                  ),
                const SizedBox(
                  height: 45,
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child:  Container(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                          Text(
              "Get The Freshest Fruit Salad Combo",
              style: TextStyle(
                  color: AppColors.headingColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
              ),
            ),
                SizedBox(height: 10,),
             Text(
                'We deliver the best and freshest fruit in town. Order for a combo today!!!',
                        style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16.0,
                  fontWeight:FontWeight.normal
                  ),
                ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40,),
          CustomButton(text: 'Lets Continue', widget: LoginScreen(),),
          const SizedBox(height: 50,),
        ],
      ),
    );
  }
}