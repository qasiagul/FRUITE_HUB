
// import 'dart:developer';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fruite_hub_ecommerce_app/components/colors.dart';
// import 'package:fruite_hub_ecommerce_app/components/images.dart';
// import 'package:fruite_hub_ecommerce_app/customs/custome_button.dart';
// import 'package:fruite_hub_ecommerce_app/customs/custome_textfeild.dart';
// import 'package:fruite_hub_ecommerce_app/screens/login.dart';

// class Signup extends StatelessWidget {
//  final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();


//    Signup({super.key});

//   // Future<void> addUser() {
//   //   var uid = FirebaseAuth.instance.currentUser!.uid;
//   //   CollectionReference users = FirebaseFirestore.instance.collection('users');

//   //   // Call the user's CollectionReference to add a new user
//   //   return users
//   //       .doc(uid)
//   //       .set({
//   //         'email': emailController.text,
//   //         'uid': uid,
//   //       })
//   //       .then((value) => print("User Added"))
//   //       .catchError((error) => print("Failed to add user: $error"));
//   // }

//   Future emailSignup() async {
//     try {
//       final credential = await FirebaseAuth.instance
//           .createUserWithEmailAndPassword(
//         email: emailController.text.trim(),
//         password: passwordController.text,
//       );
//       //     .then(
//       //   (value) async {
//       //     (value) => log("Login");
//       //     await addUser();
//       //   },
//       // );
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         log('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         log('The account already exists for that email.');
//       }
//     } 
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           AppImages.logoImage,
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: Column(
//               children: [
//                TextFeildCustom(controller: emailController, text: 'Email'),
//                 const SizedBox(height: 16),
//                 TextFeildCustom(controller: passwordController, text: 'Password',obscureText: true,)
//               ],
//             ),
//           ),
//           const SizedBox(height: 30),
//           TextFeildButton(text: 'Signup', function: emailSignup()),
//           const SizedBox(height: 10,),
//           InkWell(
//             onTap: (){
//               //heres login logic
//               Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
//             },
//             child: const Text('I have Already account? Login',       
//                      style: TextStyle(
//                       color:AppColors.themeColor,
//                       fontSize: 17,
//                       fontWeight: FontWeight.normal),
//                 ),
//           ),
//         ],
//       ),
//     );
//   }
// }