import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/widgets/custom_search_bar.dart';

class SearchBottomSheetView extends StatelessWidget {
  const SearchBottomSheetView({super.key, required this.textContent});

  final String textContent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height - 46,
        child: Column(
          children: [
            const SizedBox(height: 8),
            Container(
              width: 24,
              height: 4,
              decoration: ShapeDecoration(
                color: const Color(0xFFE8ECFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
            ),
            const SizedBox(height: 52),
            CustomSearchBar(textContent: textContent),
          ],
        ),
      ),
    );
  }
}
