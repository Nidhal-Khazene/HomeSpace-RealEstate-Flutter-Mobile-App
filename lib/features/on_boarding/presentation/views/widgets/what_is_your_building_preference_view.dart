import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_circle_container.dart';
import 'package:home_space/features/on_boarding/presentation/views/widgets/custom_property_type_container.dart';

class WhatIsYourBuildingPreferenceView extends StatefulWidget {
  const WhatIsYourBuildingPreferenceView({super.key});

  @override
  State<WhatIsYourBuildingPreferenceView> createState() =>
      _WhatIsYourBuildingPreferenceViewState();
}

class _WhatIsYourBuildingPreferenceViewState
    extends State<WhatIsYourBuildingPreferenceView> {
  final List<String> propertiesList = ["Apartment", "House", "Villa", "House"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("What's your building preference ?", style: AppStyles.medium24),
          const SizedBox(height: 32),
          Text("Property type", style: AppStyles.regular16),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.start,
              spacing: 12,
              runSpacing: 12,
              children: propertiesList.map((e) {
                return CustomPropertyTypeContainer(
                  textContent: e,
                  textContentColor: Colors.white,
                  backgroundColor: ColorsData.kSecondaryColor,
                  borderColor: ColorsData.kSecondaryColor,
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 24),
          TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 21,
                horizontal: 10,
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: SvgPicture.asset(
                  Assets.assetsImagesIconsArrowDown,
                  colorFilter: const ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              hintText: "Property Status",
              hintStyle: AppStyles.regular14.copyWith(
                color: ColorsData.kFontPrimaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: ColorsData.kBorderColor,
                  width: 1,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Beds", style: AppStyles.medium16),
              Row(
                children: [
                  CustomCircleContainer(
                    widget: SvgPicture.asset(Assets.assetsImagesIconsMinus),
                    textContentColor: Colors.white,
                    backgroundColor: ColorsData.kSecondaryColor,
                    borderColor: ColorsData.kSecondaryColor,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
