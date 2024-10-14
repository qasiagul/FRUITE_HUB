
import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/components/images.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_button.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_textfeild.dart';
import 'package:fruite_hub_ecommerce_app/screens/registered.dart';
import 'package:fruite_hub_ecommerce_app/screens/signup.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

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
          CustomButton(text: 'Login', widget: NameRegister(),),
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
            },
            child: const Text('Don\'t have an account? Sign up',       
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