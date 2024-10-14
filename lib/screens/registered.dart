import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_button.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_textfeild.dart';
import 'package:fruite_hub_ecommerce_app/screens/home.dart';

class NameRegister extends StatelessWidget {
  final TextEditingController nameC = TextEditingController();
  NameRegister({super.key});
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  Image.asset('assets/images/main2.png',width: 301,height: 260,),
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
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "What is your firstname?",
                      style: TextStyle(
                        color: AppColors.headingColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                   TextFeildCustom(controller: nameC, text: 'Name')
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              text: 'Start Odering',
              widget: HomeScreen(),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
