// import 'package:flutter/material.dart';
// import 'package:fruite_hub_ecommerce_app/customs/custom_card.dart';

// class FavoriteScreen extends StatelessWidget {
//   final List<FruitComboCard> favoriteCards;

//   FavoriteScreen({required this.favoriteCards});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Favorite Cards"),
//       ),
//       body: favoriteCards.isEmpty
//           ? Center(child: Text("No favorite cards yet."))
//           : ListView.builder(
//               itemCount: favoriteCards.length,
//               itemBuilder: (context, index) {
//                 final card = favoriteCards[index];
//                 return Card(
//                   child: ListTile(
//                     title: Text(card.title),
//                     subtitle: Text(card.description),
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }
