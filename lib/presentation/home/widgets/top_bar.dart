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
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 8.0), // Reduced vertical padding
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left side: Shadamon title and product info
            const Row(
              children: [
                Text(
                  'Shadamon',
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColors.logoOrange,
                      fontWeight: FontWeight.bold), // Logo style
                ),
                SizedBox(width: 8),
                Text('|',
                    style: TextStyle(fontSize: 24, color: Colors.black12)),
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
            // Right side: Language switch and notification buttons
            Row(
              children: [
                // Language Switch Button
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 6.0), // Padding for text
                  decoration: BoxDecoration(
                    color: Colors.grey[300], // Gray background
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  child: const Row(
                    children: [
                      Text(
                        'বাংলা',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ), // Text style for language
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),

                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(
                    Icons.notifications,
                    size: 16,
                    color: Colors.black, // Icon color
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
