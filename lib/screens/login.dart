
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_button.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_textfeild.dart';
import 'package:fruite_hub_ecommerce_app/data/auth.dart';
import 'package:fruite_hub_ecommerce_app/screens/home.dart';
import 'package:fruite_hub_ecommerce_app/screens/signup.dart';

class LoginScreen extends StatefulWidget {

  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLogin = false;

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  Future<void> signInWithEmailAndPassword()async{
    setState(() {
      isLogin = true;
    });
    try{
      await Auth().signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text
      ).then((value) {
        Navigator.push(context, MaterialPageRoute(builder: (_)=> HomeScreen()));
        setState(() {
          isLogin  = false;
        });
      },);
    }on FirebaseAuthException catch (e){
      if (e.code == 'user-not-found') {
        setState(() {
          isLogin = false;
        });
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        setState(() {
          isLogin = false;
        });
        print('Wrong password provided for that user.');
      }
      setState(() {
        isLogin = false;
      });
    }
  }

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/logo.svg'),
          // AppImages.logoImage,
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
          TextFeildButton(isLoading: isLogin, 
          
          text:  'Login' , function: () => signInWithEmailAndPassword()),
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Signup()));
                // isLogin = !isLogin;
              });
            },
            child: const Text(
              // isLogin?
            'Don\'t have an account? Sign up' ,
            // : 'I have Already account? Login',       
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