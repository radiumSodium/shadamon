import 'package:flutter/material.dart';
import '../../core/constraints/app_colors.dart';
import './widgets/top_bar.dart';
import './widgets/category_section.dart';
import '../../core/utils/custom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      body: const SafeArea(
        child: Column(
          children: [
            // Custom top bar
            TopBar(),
            CategorySection(), // Category, Location, and Save Search
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      // Placeholder for scrollable content like cards
                      Text('Scrollable body content'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavBar(), // Custom bottom nav bar
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        backgroundColor: Colors.orange,
        onPressed: () {
          // Action for Add button
        },
        child: const Icon(Icons.add, color: Colors.white, size: 36.0),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
