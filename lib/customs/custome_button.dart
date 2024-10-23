import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';

class CustomButton extends StatelessWidget {

  final String text; 
  final Widget widget;
  final double? containerWidth;
  final Color? background;
  final Color? color;
   CustomButton({super.key, required this.text, required this.widget, this.containerWidth, this.background, this.color});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
          onTap: () {
            // login logic
            
          },
          child: Container(
            width: containerWidth?? 327,
            height: 56,
            decoration: BoxDecoration(
                color:background?? AppColors.themeColor,
                border: Border.all(color: AppColors.themeColor,width: 1),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                  color:color?? Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            )),
          ),
        );
  }
}

class GoBack extends StatelessWidget {
  const GoBack({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        width: 95,
        height: 32,
        decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(),
            Icon(Icons.arrow_back_ios,color: Colors.black,),
            Text('Go back',style: TextStyle(fontSize: 16,color: AppColors.headingColor),),
            Spacer(),
      
          ],
        ),
      ),
    );
  }
}


class TextFeildButton extends StatelessWidget {

  final String text; 
  final VoidCallback function;
  final double? containerWidth;
  final Color? background;
  final Color? color;
   TextFeildButton({super.key, required this.text, required this.function, this.containerWidth, this.background, this.color});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
          onTap: () {
            // login logic
            
          },
          child: Container(
            width: containerWidth?? 327,
            height: 56,
            decoration: BoxDecoration(
                color:background?? AppColors.themeColor,
                border: Border.all(color: AppColors.themeColor,width: 1),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                  color:color?? Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            )),
          ),
        );
  }
}