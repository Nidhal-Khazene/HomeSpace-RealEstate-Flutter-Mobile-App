import 'package:flutter/material.dart';

class ListingCardCarouselViewDotsIndicator extends StatelessWidget {
  const ListingCardCarouselViewDotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: List.generate(
        4,
        (index) => Container(
          width: 4,
          height: 4,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(
              side: BorderSide(
                width: 1,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Colors.white /* White-100 */,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
