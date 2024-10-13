import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0; // Track the selected tab index

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape:
          const CircularNotchedRectangle(), // For the curved notch in the middle
      notchMargin: 10.0, // Reduced notch margin for a tighter layout
      color: Colors.white, // White background for the navbar
      child: Container(
        height: 56, // Reduced height for a more compact look
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
            Container(width: 20),
            Row(
              children: [
                _buildNavItem(Icons.mail, ' Inbox ', 2),
                _buildNavItem(Icons.person, 'Account', 3),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build each navigation item
  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index; // Update the selected index
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
        height:
            56, // Ensure the selected item's height matches the navbar height
        decoration: isSelected
            ? BoxDecoration(
                color:
                    Colors.grey[300], // Gray background for the selected item
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              )
            : null, // No decoration for unselected items
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: Colors.black, // Icon color
            ),
            Text(
              label,
              style: const TextStyle(
                color: Colors.black, // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomNavBarScreen extends StatelessWidget {
  const CustomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Custom NavBar Screen'),
      ),
      floatingActionButton: SizedBox(
        height: 70, // Increase FAB height
        width: 70, // Increase FAB width
        child: FloatingActionButton(
          onPressed: () {
            // Action for FAB
          },
          backgroundColor: Colors.orange, // FAB color
          child: const Icon(Icons.add, size: 30), // Larger icon for the FAB
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // FAB in the center
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
