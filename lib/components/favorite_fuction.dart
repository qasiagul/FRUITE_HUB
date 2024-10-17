//  import 'package:flutter/material.dart';
// import 'package:fruite_hub_ecommerce_app/components/colors.dart';
// import 'package:fruite_hub_ecommerce_app/customs/custom_card.dart';
// import 'package:fruite_hub_ecommerce_app/screens/add_basket.dart';

// class FavoriteFuction extends StatefulWidget {
//    const FavoriteFuction({super.key});
 
//    @override
//    State<FavoriteFuction> createState() => _FavoriteFuctionState();
//  }
 
//  class _FavoriteFuctionState extends State<FavoriteFuction> {
//    //list of all cards
//    List<FruitComboCard> cards = [];
//    //list of fav cards
//    List<FruitComboCard> favoriteCards = [];
//    @override
    
//     @override
//     void initState() {
//       super.initState();
//       cards = [
//          FruitComboCard(
//                         title: 'Honey Lime combo',
//                         price: '2,000',
//                         image: 'honey.png',
//                         color: AppColors.ContainerColor,
//                         route: AddBasket(
//                           images: 'honey.png',
//                           title: 'Honey Lime combo',
//                           price: '2,000',
//                         ),
//                       ),
//                       FruitComboCard(
//                         title: 'Berry mango combo',
//                         price: '8,000',
//                         image: 'berry.png',
//                         color: AppColors.ContainerColor,
//                         route: AddBasket(
//                           images: 'berry.png',
//                           title: 'Berry mango combo',
//                           price: '8,000',
//                         ), onFavoriteToggle: handleFavoriteToggle,
//                       ),
//       ];
//     }

//    Widget build(BuildContext context) {
//      return Container();
//    }
//  }