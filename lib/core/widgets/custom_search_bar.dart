import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/search_bottom_sheet_view.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key, required this.textContent});

  final String textContent;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  bool state = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          state = !state;
          showModalBottomSheet(
            backgroundColor: Colors.white,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) =>
                SearchBottomSheetView(textContent: widget.textContent),
          );
          state = !state;
        });
      },
      child: TextField(
        enabled: state,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: SvgPicture.asset(Assets.assetsImagesIconsSearchIcon),
          ),
          filled: true,
          fillColor: ColorsData.kNotReadyButtonColor,
          hintText: widget.textContent,
          hintStyle: AppStyles.regular12.copyWith(
            color: ColorsData.kSecondaryColorFont,
          ),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          border: buildOutlineInputBorder(),
          disabledBorder: buildOutlineInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: const BorderSide(color: Colors.transparent),
    );
  }
}
