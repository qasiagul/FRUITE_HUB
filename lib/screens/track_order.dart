import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/customs/custmize_driver.dart';
import 'package:fruite_hub_ecommerce_app/customs/custom_list.dart';

import '../components/colors.dart';
import '../customs/custome_button.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.1,
            width: screenWidth * 5,
            color: AppColors.themeColor,
            child: const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                GoBack(),
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Delivery Status',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                 SizedBox(height: 45,),
          const RowList(
            image: 'order.png',
            text: 'Order Taken',
            background: AppColors.Container1Color,
          ),
          VerticalDottedDivider(),
          const RowList(
              image: 'prepared.png',
              text: 'Order Is Being Prepared',
              background: AppColors.fillColor),
          VerticalDottedDivider(),
          const RowList2(
              image: 'deliver.png',
              text: 'Order Is Being Delivered',
              background: AppColors.Container2Color,
              image2: 'call.png',
              text2: 'Your delivery agent is coming'
              ),
        VerticalDottedDivider(),
        Container(
          margin:EdgeInsets.only(right: 45),
          child: Image.asset('assets/images/map.png',width: 327,height: 128,)),  
        VerticalDottedDivider(),
        Padding(
          padding: const EdgeInsets.only(left: 21.0),
          child: Row(
            children: [
              Image.asset('assets/images/green.png',width: 40.08,height: 40.08,),
              const SizedBox(width: 20,),
              Text('Order Received',style: TextStyle(color:Colors.black,fontSize: 20, fontWeight: FontWeight.w500),)
            ],
          ),
        )    ,
              ],
            ),
          )

        ],
      ),
    );
  }
}
