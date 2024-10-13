import 'package:flutter/material.dart';
import '../../presentation/home/widgets/bottom_widget.dart';

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10.0,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 56,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    _buildNavItem(Icons.home, 'Home', 0),
                    _buildNavItem(Icons.search_rounded, 'Search', 1),
                  ],
                ),
                const SizedBox(width: 40),
                Row(
                  children: [
                    _buildNavItem(Icons.mail, 'Inbox', 2),
                    _buildNavItem(Icons.person, 'Account', 3),
                  ],
                ),
              ],
            ),
          ),
          const bottom_widget(),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
        decoration: isSelected
            ? BoxDecoration(
                color: Colors.grey[300], // Highlight for selected item
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              )
            : null,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.black),
            Text(label, style: const TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
