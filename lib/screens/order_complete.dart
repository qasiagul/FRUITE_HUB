import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_button.dart';
import 'package:fruite_hub_ecommerce_app/screens/home.dart';
import 'package:fruite_hub_ecommerce_app/screens/track_order.dart';

class OrderComplete extends StatelessWidget {
  const OrderComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
             const SizedBox(height: 30,),
             Image.asset('assets/icons/check.png',width: 164,height: 164,),
              const SizedBox(height: 20),
              const Text(
                "Congratulations!!!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color:AppColors.headingColor,
                ),
              ),
              const SizedBox(height: 40),
             const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0),
                child:  Text(
                  "Your order has been taken and  is being attended to",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color:AppColors.headingColor,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              CustomButton(text: 'Track order', widget: TrackOrder(), containerWidth: 133,),
              const SizedBox(height: 40),
              CustomButton(text: 'Continue shopping', widget: HomeScreen(),containerWidth: 181,color: AppColors.themeColor,background: Colors.white,)

        ],
      ),
    );
  }
}
