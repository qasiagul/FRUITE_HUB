
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/components/images.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_button.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_textfeild.dart';
import 'package:fruite_hub_ecommerce_app/data/auth.dart';
import 'package:fruite_hub_ecommerce_app/screens/registered.dart';
import 'package:fruite_hub_ecommerce_app/screens/signup.dart';

class LoginScreen extends StatefulWidget {

  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLogin = true;

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  Future<void> signInWithEmailAndPassword()async{
    try{
      await Auth().signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text
      );
    }on FirebaseAuthException catch (e){
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

    Future<void> createUserWithEmailAndPassword()async{
    try{
      await Auth().createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text
      );
    }on FirebaseAuthException catch (e){
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

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
                TextFeildCustom(controller: passwordController, text: 'Password',obscureText: true,)
              ],
            ),
          ),
          const SizedBox(height: 30),
          TextFeildButton(text: isLogin? 'Login' : 'Signup' , function: isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword),
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){
              setState(() {
                isLogin = !isLogin;
              });
            },
            child: Text(isLogin? 'Don\'t have an account? Sign up' : 'I have Already account? Login',       
                     style: const TextStyle(
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