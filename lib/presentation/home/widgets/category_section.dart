import 'package:flutter/material.dart';
import '../../../core/constraints/app_colors.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
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
