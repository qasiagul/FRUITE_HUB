import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/components/images.dart';
import 'package:fruite_hub_ecommerce_app/customs/custom_card.dart';
import 'package:fruite_hub_ecommerce_app/customs/custom_tabs.dart';
import 'package:fruite_hub_ecommerce_app/screens/add_basket.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController nameC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child:Image.asset('assets/icons/menu.png',width: 22,height: 11,),
              ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Column(
              children: [
                AppImages.buckitIcon,
                const Text(
                  'My basket',
                  style: TextStyle(
                      fontSize: 15,
                      color: AppColors.headingColor,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.themeColor,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle the navigation to Home
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle the navigation to Settings
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                // Handle the navigation to About
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hello Tony', // First part
                          style: TextStyle(
                            color: AppColors.headingColor,
                            fontSize: 24.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text:
                              ', What fruit salad combo do you want today?', // Remaining text
                          style: TextStyle(
                            color: AppColors.headingColor,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.start, // Centering the text
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.fillColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Search for fruit salad combos',
                            prefixIcon: const Icon(Icons.search),
                          ),
                        ),
                      ),
                      const SizedBox(  width:18), // Adding some space between TextField and Icon
                      AppImages.filterIcon,
                    ],
                  ),
                  const SizedBox(height: 40),
                  Container(
                    margin: EdgeInsets.only(right: 110),
                    child: const Text('Recommended Combo',
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.headingColor,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FruitComboCard(
                        title: 'Honey Lime combo',
                        price: '2,000',
                        image: 'honey.png',
                        color: AppColors.ContainerColor,
                        route: AddBasket(
                          image: 'honey.png',
                          title: 'Honey Lime combo',
                          price: '2,000',
                        ),
                      ),
                      const Spacer(),
                      FruitComboCard(
                        title: 'Berry mango combo',
                        price: '8,000',
                        image: 'berry.png',
                        color: AppColors.ContainerColor,
                        route: AddBasket(
                          image: 'berry.png',
                          title: 'Berry mango combo',
                          price: '8,000',
                        ),
                      ),
                    ],
                  ),
                  const TabBarSection(),
                  const SizedBox(
                    height: 40,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FruitComboCard(
                          title: 'Quinoa fruit salad',
                          price: '10,000',
                          image: 'Quinoa.png',
                          color: AppColors.Container1Color,
                          route: AddBasket(
                            image: 'Quinoa.png',
                            title: 'Quinoa fruit salad',
                            price: '10,000',
                          ),
                        ),
                        FruitComboCard(
                          title: 'Tropical fruit salad',
                          price: '10,000',
                          image: 'Tropical.png',
                          color: AppColors.Container2Color,
                          route: AddBasket(
                            image: 'Tropical.png',
                            title: 'Tropical fruit salad',
                            price: '10,000',
                          ),
                        ),
                        FruitComboCard(
                          title: 'Melo fruit salad',
                          price: '10,000',
                          image: 'melo.png',
                          color: AppColors.Container3Color,
                          route: AddBasket(
                            image: 'melo.png',
                            title: 'Melo fruit salad',
                            price: '10,000',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


