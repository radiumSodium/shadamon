import 'package:flutter/material.dart';
import 'package:sadamon/presentation/home/widgets/category_section.dart';
import 'package:sadamon/presentation/screens/account_screen.dart';
import 'package:sadamon/presentation/screens/home_screen.dart';
import 'package:sadamon/presentation/screens/inbox_screen.dart';
import 'package:sadamon/presentation/screens/search_screen.dart';
import '../../core/constraints/app_colors.dart';
import './widgets/top_bar.dart';
import '../../core/utils/custom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const InboxScreen(),
    const AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      body: SafeArea(
        child: Column(
          children: [
            const TopBar(), // Custom TopBar
            const CategorySection(), // Category Section
            Expanded(
              child: _screens[_selectedIndex], // Display selected screen
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // Center the FAB
      bottomNavigationBar: CustomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ), // Custom bottom nav bar with notch
    );
  }
}
