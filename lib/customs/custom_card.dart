import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/customs/custom_addbutton.dart';


class FruitComboCard extends StatefulWidget {
  final String title;
  final String price;
  final String image;
  final Color color;
  final Widget route;
  // final Function onFavoriteToggle;

  FruitComboCard({required this.title, required this.price, required this.image, required this.color, required this.route,});

  @override
  State<FruitComboCard> createState() => _FruitComboCardState();
}

class _FruitComboCardState extends State<FruitComboCard> {
  bool isFavorited = false;
  
  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 152,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color:widget.color,
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
                child:  InkWell(
                  onTap: (){
                    setState(() {
                      isFavorited =! isFavorited;
                    });
                  },
                  child: Icon(
                     isFavorited ? Icons.favorite : Icons.favorite_border,
                    size: 16,
                    color: isFavorited ? AppColors.themeColor : AppColors.themeColor,
                  ),
                )),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => widget.route));
                  },
                  child: Center(child: Image.asset('assets/images/${widget.image}',width: 80,height: 80,),)),
             const SizedBox(
              height: 7,
            ),
            Text(widget.title,
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
                  Text(widget.price,
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
    );
  }
}
