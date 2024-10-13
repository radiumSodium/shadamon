import 'package:flutter/material.dart';
import '../../../core/constraints/app_colors.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            spreadRadius: 0, // Spread radius (0 to avoid expanding)
            blurRadius: 10, // Softness of the shadow
            offset: const Offset(0, 3), // Offset only in the bottom direction
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 8.0), // Reduced padding
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildIconWithLabel(Icons.category, 'Categories'),
            const Text('|',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black12)), // Separator between categories
            _buildIconWithLabel(Icons.location_on, 'Location'),
            const Text('|',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black12)), // Separator between categories
            _buildIconWithLabel(Icons.save_alt, 'Save Search'),
          ],
        ),
      ),
    );
  }

  Widget _buildIconWithLabel(IconData icon, String label) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: AppColors.logoOrange,
        ), // Smaller icon
        const SizedBox(width: 4), // Tight spacing
        Text(label,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold)), // Smaller text
      ],
    );
  }
}
