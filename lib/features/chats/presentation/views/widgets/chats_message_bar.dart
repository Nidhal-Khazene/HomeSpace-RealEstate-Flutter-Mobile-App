import 'package:flutter/material.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_text_field.dart';

class ChatsMessageBar extends StatelessWidget {
  const ChatsMessageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: CustomTextField(
              hintStyle: AppStyles.regular12.copyWith(
                color: ColorsData.kFontSecondaryColor,
              ),
              textContent: "Write Message",
              borderRadiusValue: 100,
            ),
          ),
        ],
      ),
    );
  }
}
