import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/data/auth.dart';
import 'package:fruite_hub_ecommerce_app/screens/home.dart';
import 'package:fruite_hub_ecommerce_app/screens/login.dart';
import 'package:fruite_hub_ecommerce_app/screens/splash_screen.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context,snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return SplashScreen();
        } if (snapshot.hasData){
          return HomeScreen();
        }
        return LoginScreen();
      }
      );
  }
}