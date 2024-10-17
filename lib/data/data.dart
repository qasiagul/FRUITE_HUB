import 'package:flutter/material.dart';

class Product {
  final String title;
  final double price;
  final String imageUrl;
  final String color;
  final String route;
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
      imageUrl: 'assets/images/tropical_heatwave.png',
      color: '#FF4500',
      route: '/tropical_heatwave',
      category: 'Hottest'
  ),
  Product(
      title: 'Spicy Berry Blaze',
      price: 9.49,
      imageUrl: 'assets/images/spicy_berry_blaze.png',
      color: '#FF6347',
      route: '/spicy_berry_blaze',
      category: 'Hottest'
  ),
  Product(
      title: 'Fiery Citrus Mix',
      price: 8.99,
      imageUrl: 'assets/images/fiery_citrus_mix.png',
      color: '#FFA07A',
      route: '/fiery_citrus_mix',
    category: 'Hottest',
  ),
  Product(
      title: 'Mango Madness',
      price: 9.99,
      imageUrl: 'assets/images/mango_madness.png',
      color: '#FF8C00',
      route: '/mango_madness',
    category: 'Hottest',
  ),
  Product(
      title: 'Chili Melon Fiesta',
      price: 7.99,
      imageUrl: 'assets/images/chili_melon_fiesta.png',
      color: '#FF4500',
      route: '/chili_melon_fiesta',
    category: 'Hottest',
  ),
  Product(
      title: 'Dragon Fire',
      price: 11.49,
      imageUrl: 'assets/images/dragon_fire.png',
      color: '#FF69B4',
      route: '/dragon_fire',
    category: 'Hottest',
  ),
  Product(
      title: 'Berry Delight',
      price: 8.99,
      imageUrl: 'assets/images/berry_delight.png',
      color: '#8A2BE2',
      route: '/berry_delight',
      category: 'Top',
    ),
      Product(
      title: 'Tropical Bliss',
      price: 9.49,
      imageUrl: 'assets/images/tropical_bliss.png',
      color: '#FFD700',
      route: '/tropical_bliss',
      category: 'Top',
    ),
      Product(
      title: 'Citrus Explosion',
      price: 7.99,
      imageUrl: 'assets/images/citrus_explosion.png',
      color: '#FFA500',
      route: '/citrus_explosion',
      category: 'Top',
    ),
    Product(
      title: 'Melon Magic',
      price: 7.49,
      imageUrl: 'assets/images/melon_magic.png',
      color: '#98FB98',
      route: '/melon_magic',
      category: 'Top',
    ),
        Product(
      title: 'Exotic Paradise',
      price: 9.99,
      imageUrl: 'assets/images/exotic_paradise.png',
      color: '#EE82EE',
      route: '/exotic_paradise',
      category: 'Top',
    ),
        Product(
      title: 'Berry Carnival',
      price: 9.29,
      imageUrl: 'assets/images/berry_carnival.png',
      color: '#FF1493',
      route: '/berry_carnival',
      category: 'Top',
    ),
        Product(
      title: 'Citrus Melon Splash',
      price: 7.99,
      imageUrl: 'assets/images/citrus_melon_splash.png',
      color: '#FF7F50',
      route: '/citrus_melon_splash',
      category: 'New Combo',
    ),
        Product(
      title: 'Mango Berry Twist',
      price: 9.49,
      imageUrl: 'assets/images/mango_berry_twist.png',
      color: '#FFD700',
      route: '/mango_berry_twist',
      category: 'New Combo',
    ),
            Product(
      title: 'Tropical Berry Fusion',
      price: 10.49,
      imageUrl: 'assets/images/tropical_berry_fusion.png',
      color: '#FF6347',
      route: '/tropical_berry_fusion',
      category: 'New Combo',
    ),
        Product(
      title: 'Citrus Kiwi Blast',
      price: 8.99,
      imageUrl: 'assets/images/citrus_kiwi_blast.png',
      color: '#32CD32',
      route: '/citrus_kiwi_blast',
      category: 'New Combo',
    ),
            Product(
      title: 'Melon Citrus Cooler',
      price: 7.49,
      imageUrl: 'assets/images/melon_citrus_cooler.png',
      color: '#98FB98',
      route: '/melon_citrus_cooler',
      category: 'New Combo',
    ),
        Product(
      title: 'Dragon Fruit Duo',
      price: 10.99,
      imageUrl: 'assets/images/dragon_fruit_duo.png',
      color: '#EE82EE',
      route: '/dragon_fruit_duo',
      category: 'New Combo',
    ),
                Product(
      title: 'Berry Bonanza',
      price: 9.29,
      imageUrl: 'assets/images/berry_bonanza.png',
      color: '#FF69B4',
      route: '/berry_bonanza',
      category: 'Popular',
    ),
        Product(
      title: 'Tropical Dream',
      price: 10.29,
      imageUrl: 'assets/images/tropical_dream.png',
      color: '#FFD700',
      route: '/tropical_dream',
      category: 'Popular',
    ),
       Product(
      title: 'Citrus Sunrise',
      price: 8.29,
      imageUrl: 'assets/images/citrus_sunrise.png',
      color: '#FFA500',
      route: '/citrus_sunrise',
      category: 'Popular',
    ),
        Product(
      title: 'Melon Oasis',
      price: 7.89,
      imageUrl: 'assets/images/melon_oasis.png',
      color: '#98FB98',
      route: '/melon_oasis',
      category: 'Popular',
    ),
      Product(
      title: 'Exotic Tropic',
      price: 10.99,
      imageUrl: 'assets/images/exotic_tropic.png',
      color: '#EE82EE',
      route: '/exotic_tropic',
      category: 'Popular',
    ),
      Product(
      title: 'Berry Sunshine',
      price: 9.49,
      imageUrl: 'assets/images/berry_sunshine.png',
      color: '#FF4500',
      route: '/berry_sunshine',
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