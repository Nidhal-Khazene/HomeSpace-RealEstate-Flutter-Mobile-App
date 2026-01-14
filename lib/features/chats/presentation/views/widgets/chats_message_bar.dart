import 'package:flutter/material.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_oval_container.dart';
import 'package:home_space/core/widgets/custom_text_field.dart';

class ChatsMessageBar extends StatelessWidget {
  const ChatsMessageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 40,
              child: CustomTextField(
                hintStyle: AppStyles.regular12.copyWith(
                  color: ColorsData.kFontSecondaryColor,
                ),
                textContent: "Write Message",
                borderRadiusValue: 100,
              ),
            ),
          ),
          const SizedBox(width: 11),
          CustomOvalContainer(
            height: 40,
            width: 40,
            widget: Icon(
              Icons.add,
              color: ColorsData.kMediumPrimaryColor,
              size: 20,
            ),
            borderColor: ColorsData.kBorderColor,
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
