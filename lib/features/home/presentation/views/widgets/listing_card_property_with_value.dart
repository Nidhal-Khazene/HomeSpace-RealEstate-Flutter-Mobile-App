import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_space/core/utils/styles.dart';

class ListingCardPropertyWithValue extends StatelessWidget {
  const ListingCardPropertyWithValue({
    super.key,
    required this.property,
    required this.value,
    this.height,
    this.width,
  });
  final String property;
  final String value;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(property, height: height, width: width),
        const SizedBox(width: 4),
        Text(value, style: AppStyles.regular12),
      ],
    );
  }
}
