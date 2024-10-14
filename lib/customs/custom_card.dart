import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/customs/custom_addbutton.dart';


class FruitComboCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  final Color color;
  final Widget route;

  FruitComboCard({required this.title, required this.price, required this.image, required this.color, required this.route});

  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => route));
        },
        child: Container(
          width: 152,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color:color,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 110.0, top: 15),
                  child: const Icon(
                    Icons.favorite_border,
                    size: 16,
                    color: AppColors.themeColor,
                  )),
                  Center(child: Image.asset('assets/images/$image',width: 80,height: 80,),),
               const SizedBox(
                height: 7,
              ),
              Text(title,
                  style:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('N',
                        style: TextStyle(
                            color: Colors.orange,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 14)),
                    Text(price,
                        style:
                            const TextStyle(color: Colors.orange, fontSize: 14)),
                    const Spacer(),
                    const AddButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
