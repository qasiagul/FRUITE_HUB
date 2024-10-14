  
import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
  

  class TextFeildCustom extends StatelessWidget {

    final TextEditingController  controller;
    final String text ;
    final Icon? icon;
    

    const TextFeildCustom({super.key, required this.controller, required this.text, this.icon});
  
    @override
    Widget build(BuildContext context) {
      return TextField(
                controller:controller,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor:AppColors.fillColor,
                  labelText:text,
                  border: const OutlineInputBorder(),
                  hoverColor: AppColors.themeColor,
                  prefixIcon: icon,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Rounded borders
                    borderSide: BorderSide.none, // No visible border
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0), // Padding inside the field
                ),
              );
    }
  }
 

