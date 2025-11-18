import 'package:flutter/material.dart';
import 'package:home_space/core/utils/colors.dart';

class CustomScrollContainer extends StatelessWidget {
  const CustomScrollContainer({super.key, this.isActive = false});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: Container(
          width: double.infinity,
          height: 4,
          decoration: ShapeDecoration(
            color: !isActive
                ? const Color(0xFFE8ECFF)
                : ColorsData.kSecondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
      ),
    );
  }
}
