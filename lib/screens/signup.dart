
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/components/images.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_button.dart';
import 'package:fruite_hub_ecommerce_app/customs/custome_textfeild.dart';
import 'package:fruite_hub_ecommerce_app/data/auth.dart';
import 'package:fruite_hub_ecommerce_app/screens/login.dart';

class Signup extends StatefulWidget {

   Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
 final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool isAccountCreated = false;

 Future<void> createUserWithEmailAndPassword()async{
  setState(() {
    isAccountCreated = true;
  });
    try{
      await Auth().createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text
      ).then((v){
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Account Created Succesfully")));
        setState(() {
          isAccountCreated = false;
        });
      });
    }on FirebaseAuthException catch (e){
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        setState(() {
          isAccountCreated = false;
        });
      } else if (e.code == 'wrong-password') {
         setState(() {
          isAccountCreated = false;
        });
        print('Wrong password provided for that user.');
      }
      setState(() {
        isAccountCreated = false;
      });
    }
  }

  // Future<void> addUser() {
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
          TextFeildButton( isLoading: isAccountCreated, text: 'Signup', function: ()=> createUserWithEmailAndPassword()),
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