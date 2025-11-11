import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_space/core/utils/styles.dart';

class CustomSocialMediaButton extends StatelessWidget {
  const CustomSocialMediaButton({
    super.key,
    required this.socialIcon,
    required this.textContent,
  });
  final String socialIcon;
  final String textContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 48.60, vertical: 11),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE9E8E8)),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(socialIcon),
          const SizedBox(width: 54.08),
          Text(textContent, style: AppStyles.medium16),
        ],
      ),
    );
  }
}
