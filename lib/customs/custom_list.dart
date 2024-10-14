import 'package:flutter/material.dart';

class RowList extends StatelessWidget {
  final String image;
  final String text;
  final Color background;
  final Widget? iconImage;
  
  
  const RowList({super.key, required this.image, required this.text, required this.background, this.iconImage, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              color:background,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Image.asset('assets/images/$image',width: 48,height: 43.25,),
          ),
          SizedBox(width: 20,),
          Text(text as String,style: const TextStyle(color:Colors.black,fontSize: 20, fontWeight: FontWeight.w500),),
          const Spacer(),
          Image.asset('assets/images/green.png',width: 26.08,height: 26.08,)
        ],
      ),
    ) ;
  }
}

class RowList2 extends StatelessWidget {
  final String image;
  final String image2;
  final String text;
  final String text2;
  final Color background;
  const RowList2({super.key, required this.image, required this.text, required this.background, required this.image2, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              color:background,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Image.asset('assets/images/$image',width: 48,height: 43.25,),
          ),
          SizedBox(width: 20,),
          Column(
            children: [
              Text(text as String,style: const TextStyle(color:Colors.black,fontSize: 20, fontWeight: FontWeight.w500),),
              Text(text2 as String,style: const TextStyle(color:Colors.black,fontSize: 16, fontWeight: FontWeight.w200),),
            ],
          ),
          const Spacer(),
          Image.asset('assets/images/$image2',width: 40.08,height: 40.08,)
        ],
      ),
    ) ;
  }
}