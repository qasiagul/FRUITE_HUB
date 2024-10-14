import 'package:flutter/material.dart';
import 'package:fruite_hub_ecommerce_app/components/colors.dart';

class TabBarSection extends StatelessWidget {
  const TabBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 5,
      child: TabBar(
        labelColor: AppColors.headingColor,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.orange,
        labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontSize: 13),
        tabs: [
          Tab(
            text: 'Hottest',
          ),
          Tab(text: 'Popular'),
          Tab(text: 'New combo'),
          Tab(text: 'Top'),
        ],
      ),
    );
  }
}