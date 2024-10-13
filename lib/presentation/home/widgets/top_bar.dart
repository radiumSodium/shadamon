import 'package:flutter/material.dart';
import '../../../core/constraints/app_colors.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white, // Background color
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(115, 173, 174, 174), // Black line color
            width: 1.0, // Line thickness (1 pixel)
          ),
        ),
      ),
      // Match background color
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 8.0), // Reduced vertical padding
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Text(
                  'Shadamon', // Logo-like text
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColors.logoOrange,
                      fontWeight: FontWeight.bold), // Reduced font size
                ),
                SizedBox(width: 8), // Reduced spacing
                Text('|',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black12,
                    )), // Smaller separator
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '12,774',
                      style: TextStyle(
                        fontSize: 10, // Reduced font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Products',
                      style: TextStyle(
                        fontSize: 8, // Reduced font size
                      ),
                    ), // Total products count
                  ],
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Language switch action
                  },
                  // Smaller icon
                  label: const Text('বাংলা',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      )), // Smaller text
                  style: ElevatedButton.styleFrom(
                    elevation: 1.0,
                    backgroundColor: AppColors.selectedLogoBG,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2, vertical: 2), // Compact button
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  color: Colors.black,

                  onPressed: () {
                    // Notification button action
                  },
                  icon:
                      const Icon(Icons.notifications, size: 20), // Smaller icon
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
