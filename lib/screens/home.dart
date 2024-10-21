import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/components/images.dart';
import 'package:fruite_hub_ecommerce_app/customs/custom_card.dart';
import 'package:fruite_hub_ecommerce_app/screens/add_basket.dart';
import 'package:fruite_hub_ecommerce_app/screens/fav_screen.dart';

import '../data/data.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController nameC = TextEditingController();
  List _categories =
      productList.map((product) => product.category).toSet().toList();
  int selectedIndex = -1;
  List<Product> _filteredList = [];
  updateFilteredList(String category) {
    _filteredList =
        productList.where((product) => product.category == category).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Image.asset(
              'assets/icons/menu.png',
              width: 22,
              height: 11,
            ),
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
              leading: Icon(Icons.home,color: AppColors.themeColor,),
              title: Text('Home'),
              onTap: () {
                // Handle the navigation to Home
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings,color: AppColors.themeColor,),
              title: Text('Settings'),
              onTap: () {
                // Handle the navigation to Settings
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.info,color: AppColors.themeColor,),
              title: Text('About'),
              onTap: () {
                // Handle the navigation to About
                Navigator.pop(context); // Close the drawer
              },
            ),
                        ListTile(
              leading: Icon(Icons.favorite,color: AppColors.themeColor,),
              title: Text('Favorite'),
              onTap: () {
                // Handle the navigation to About
                Navigator.push(context, MaterialPageRoute(builder: (context) => FavItems() )); // Close the drawer
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
                      const SizedBox(
                          width:
                              18), // Adding some space between TextField and Icon
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
                          images: 'honey.png',
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
                          images: 'berry.png',
                          title: 'Berry mango combo',
                          price: '8,000',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: screenWidth * 5,
                    height: screenHeight * 0.1,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _categories.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              updateFilteredList(_categories[index]);
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: selectedIndex == index
                                          ? AppColors.themeColor
                                          : Colors.white,
                                      width: selectedIndex == index ? 3.0 : 0.0,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  _categories[index],
                                  style: TextStyle(
                                    fontSize: selectedIndex == index
                                        ? 32
                                        : 22, //change font size
                                    color: selectedIndex == index
                                        ? AppColors.headingColor
                                        : AppColors.greyColor,
                                    fontWeight: selectedIndex == index
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                      child:  Row(
                          children: _filteredList.map((e) {
                        return FruitComboCard(
                            title: e.title,
                            price: e.price.toString(),
                            image: e.imageUrl,
                            color: e.color,
                            route: e.route);
                      }).toList())  
                  
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
