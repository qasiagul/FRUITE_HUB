
import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/components/images.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_button.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_textfeild.dart';
import 'package:fruite_hub_ecommerce_app/screens/login.dart';

class Signup extends StatelessWidget {
 final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


   Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppImages.logoImage,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
               TextFeildCustom(controller: emailController, text: 'Email'),
                const SizedBox(height: 16),
                TextFeildCustom(controller: passwordController, text: 'Password')
              ],
            ),
          ),
          const SizedBox(height: 30),
          CustomButton(text: 'Signup', widget: LoginScreen(),),
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){
              //heres login logic
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: const Text('I have Already account? Login',       
                     style: TextStyle(
                      color:AppColors.themeColor,
                      fontSize: 17,
                      fontWeight: FontWeight.normal),
                ),
          ),
        ],
      ),
    );
  }
}