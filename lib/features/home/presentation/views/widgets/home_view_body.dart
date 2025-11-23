import 'package:flutter/material.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_search_bar.dart';
import 'package:home_space/features/home/presentation/views/widgets/category_chips.dart';
import 'package:home_space/features/home/presentation/views/widgets/home_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeHeader(),
        const SizedBox(height: 30),
        const CustomSearchBar(
          textContent: "Search Address, City or Postal code",
          state: true,
        ),
        const SizedBox(height: 32),
        Text("Listings Nearby", style: AppStyles.medium16),
        const SizedBox(height: 16),
        const CategoryChips(),
      ],
    );
  }
}
