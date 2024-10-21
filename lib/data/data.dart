
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';
import 'package:fruite_hub_ecommerce_app/screens/add_basket.dart';

class Product {
  final String title;
  final double price;
  final String imageUrl;
  final Color color;
  final Widget route;
  bool isFav;
  final String category;
  Product({
   required this.title,
    required this.price,
    required this.imageUrl,
    required this.color,
    required this.category,
    required this.route,
    this.isFav = false, // Optional, defaults to false
  });
}
List<Product> productList = [
  Product(
    title: 'Tropical Heatwave',
      price: 10.99,
      imageUrl: 'Tropical.png',
      color:AppColors.Container1Color,
      route: AddBasket(images:  'Tropical.png', title: 'Tropical Heatwave', price: '10.99'),
      category: 'Hottest'
  ),
  Product(
      title: 'Spicy Berry Blaze',
      price: 9.49,
      imageUrl: 'Quinoa.png',
      color:AppColors.Container2Color,
      route: AddBasket(images: 'Quinoa.png', title: 'Spicy Berry Blaze', price: '9.49'),
      category: 'Hottest'
  ),
  Product(
      title: 'Fiery Citrus Mix',
      price: 8.99,
      imageUrl: 'melo.png',
      color: AppColors.Container2Color,
      route: AddBasket(images:  'melo.png', title: 'Fiery Citrus Mix', price: '8.99'),
    category: 'Hottest',
  ),
  Product(
      title: 'Mango Madness',
      price: 9.99,
      imageUrl: 'honey.png',
      color: AppColors.Container1Color,
      route:AddBasket(images: 'honey.png', title: 'Mango Madness', price: '9.99'),
    category: 'Hottest',
  ),
  Product(
      title: 'Chili Melon Fiesta',
      price: 7.99,
      imageUrl: 'Quinoa.png',
      color:AppColors.ContainerColor,
      route: AddBasket(images: 'Quinoa.png', title: 'Chili Melon Fiesta', price: '7.99'),
    category: 'Hottest',
  ),
  Product(
      title: 'Dragon Fire',
      price: 11.49,
      imageUrl: 'exotic_tropic.jpeg',
      color:AppColors.Container4Color,
      route:AddBasket(images: 'exotic_tropic.jpeg', title: 'Dragon Fire', price: '11.49'),
    category: 'Hottest',
  ),
  Product(
      title: 'Berry Delight',
      price: 8.99,
      imageUrl: 'honey.png',
      color:AppColors.Container2Color,
      route:AddBasket(images: 'honey.png', title: 'Berry Delight', price: '8.99'),
      category: 'Top',
    ),
      Product(
      title: 'Tropical Bliss',
      price: 9.49,
      imageUrl: 'Tropical.png',
      color: AppColors.Container1Color,
      route: AddBasket(images: 'Tropical.png', title: 'Tropical Bliss', price: '9.49'),
      category: 'Top',
    ),
      Product(
      title: 'Citrus Explosion',
      price: 7.99,
      imageUrl: 'melo.png',
      color: AppColors.ContainerColor,
      route: AddBasket(images: 'melo.png', title: 'Citrus Explosion', price: '7.99'),
      category: 'Top',
    ),
    Product(
      title: 'Melon Magic',
      price: 7.49,
      imageUrl: 'honey.png',
      color: AppColors.Container4Color,
      route:AddBasket(images: 'honey.png', title: 'Melon Magic', price: '7.49'),
      category: 'Top',
    ),
        Product(
      title: 'Exotic Paradise',
      price: 9.99,
      imageUrl: 'Quinoa.png',
      color: AppColors.Container3Color,
      route: AddBasket(images: 'Quinoa.png', title: 'Exotic Paradise', price: '9.99'),
      category: 'Top',
    ),
        Product(
      title: 'Berry Carnival',
      price: 9.29,
      imageUrl: 'honey.png',
      color: AppColors.Container2Color,
      route:AddBasket(images:  'honey.png', title: 'Berry Carnival', price: '9.29'),
      category: 'Top',
    ),
        Product(
      title: 'Citrus Melon Splash',
      price: 7.99,
      imageUrl: 'melo.png',
      color: AppColors.Container1Color,
      route: AddBasket(images: 'assets/images/citrus_melon_splash.png', title: 'Citrus Melon Splash', price: '7.99'),
      category: 'New Combo',
    ),
        Product(
      title: 'Mango Berry Twist',
      price: 9.49,
      imageUrl: 'Quinoa.png',
      color: AppColors.ContainerColor,
      route: AddBasket(images: 'Quinoa.png', title: 'Mango Berry Twist', price: '9.49'),
      category: 'New Combo',
    ),
            Product(
      title: 'Tropical Berry Fusion',
      price: 10.49,
      imageUrl: 'honey.png',
      color: AppColors.Container4Color,
      route: AddBasket(images: 'honey.png', title: 'Tropical Berry Fusion', price: '10.49'),
      category: 'New Combo',
    ),
        Product(
      title: 'Citrus Kiwi Blast',
      price: 8.99,
      imageUrl: 'melo.png',
      color: AppColors.Container2Color,
      route:AddBasket(images: 'melo.png', title: 'Citrus Kiwi Blast', price: '8.99'),
      category: 'New Combo',
    ),
            Product(
      title: 'Melon Citrus Cooler',
      price: 7.49,
      imageUrl: 'Tropical.png',
      color:AppColors.Container3Color,
      route:AddBasket(images: 'Tropical.png', title: 'Melon Citrus Cooler', price: '7.49'),
      category: 'New Combo',
    ),
        Product(
      title: 'Dragon Fruit Duo',
      price: 10.99,
      imageUrl: 'honey.png',
      color: AppColors.Container3Color,
      route: AddBasket(images: 'honey.png', title: 'Dragon Fruit Duo', price: '10.99'),
      category: 'New Combo',
    ),
                Product(
      title: 'Berry Bonanza',
      price: 9.29,
      imageUrl: 'berry.png',
      color: AppColors.Container4Color,
      route:AddBasket(images: 'berry.png', title: 'Berry Bonanza', price: '2.29'),
      category: 'Popular',
    ),
        Product(
      title: 'Tropical Dream',
      price: 10.29,
      imageUrl: 'Tropical.png',
      color: AppColors.Container2Color,
      route: AddBasket(images: 'Tropical.png', title: 'Tropical Dream', price: '10.29'),
      category: 'Popular',
    ),
       Product(
      title: 'Citrus Sunrise',
      price: 8.29,
      imageUrl: 'honey.png',
      color: AppColors.Container1Color,
      route: AddBasket(images: 'honey.png', title: 'Citrus Sunrise', price: '8.29'),
      category: 'Popular',
    ),
        Product(
      title: 'Melon Oasis',
      price: 7.89,
      imageUrl: 'melo.png',
      color: AppColors.ContainerColor,
      route: AddBasket(images: 'melo.png', title: 'Melon Oasis', price: '7.89'),
      category: 'Popular',
    ),
      Product(
      title: 'Exotic Tropic',
      price: 10.99,
      imageUrl: 'exotic_tropic.jpeg',
      color: AppColors.Container4Color,
      route: AddBasket(images: 'exotic_tropic.jpeg', title: 'Exotic Tropic', price: '10.99') ,
      category: 'Popular',
    ),
      Product(
      title: 'Berry Sunshine',
      price: 9.49,
      imageUrl: 'honey.png',
      color: AppColors.Container3Color,
      route: AddBasket(images: 'honey.png', title: 'Berry Sunshine', price: '9.49'),
      category: 'Popular',
    ),
];

// import 'package:flutter/material.dart';
// import 'package:fruite_hub_ecommerce_app/components/colors.dart';
// import 'package:fruite_hub_ecommerce_app/screens/add_basket.dart';

// class Product {
//   final String name;
//   final Color color;
//   bool isFav;
//   final Image image;
//   final Widget route;
//   final String category;

//   Product({
//     required this.name,
//     required this.image,
//     this.isFav = false,
//     required this.category,
//     required this.color,
//     required this.route,
//   });
// }

// List<Product> productList = [
//   Product(
//     name:'Honey Lime',
//     image:Image.asset('assets/images/honey.png'),
//     category: 'Popular',
//     color: AppColors.ContainerColor,
//     route: AddBasket(images: 'assets/images/honey.png', title: 'Honey Lime', price: '10,000')
//     ),
//       Product(
//     name:'Quino fruit salad',
//     image:Image.asset('assets/images/Quinoa.png'),
//     category: 'Top',
//     color: AppColors.Container2Color,
//     route: AddBasket(images: 'assets/images/Quinoa.png', title: 'Quino fruit salad', price: '10,000')
//     ),
//       Product(
//     name:'Tropical fruit salad',
//     image:Image.asset('assets/images/Tropical.png'),
//     category: 'Hottest',
//     color: AppColors.Container1Color,
//     route: AddBasket(images: 'assets/images/Tropical.png', title: 'Tropical fruit salad', price: '10,000')
//     ),
//       Product(
//     name:'Berry mango combo',
//     image:Image.asset('assets/images/berry.png'),
//     category: 'Top',
//     color: AppColors.ContainerColor,
//     route: AddBasket(images: 'assets/images/berry.png', title: 'Berry mango combo', price: '2,000')
//     ),
//     Product(
//       name: 'Melo fruit salad',
//       image: Image.asset('assets/images/melo.png'),
//       category: 'New combo',
//       color: AppColors.Container3Color,
//       route:  AddBasket(images: 'assets/images/berry.png', title: 'Melo fruit salad', price: '10,000')
//       ),
// ];


// class Product {
//   final String title;
//   final double price;
//   final String imageUrl;
//   final bool isFavorite;

//   Product({
//     required this.title,
//     required this.price,
//     required this.imageUrl,
//     this.isFavorite = false,
//   });
// }
//  final List<Product> products = [
//     Product(
//       title: 'Honey lime combo',
//       price: 2000,
//       imageUrl: 'assets/images/honey_lime_combo.png',
//       isFavorite: true,
//     ),
//     Product(
//       title: 'Tropical Blast',
//       price: 1500,
//       imageUrl: 'assets/images/tropical_blast.png',
//     ),
//     Product(
//       title: 'Berry Delight',
//       price: 1800,
//       imageUrl: 'assets/images/berry_delight.png',
//     ),
//   ];