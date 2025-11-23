import 'package:flutter/material.dart';
import 'package:home_space/core/widgets/custom_search_bar.dart';
import 'package:home_space/features/home/presentation/views/widgets/home_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeHeader(),
        SizedBox(height: 30),
        CustomSearchBar(
          textContent: "Search Address, City or Postal code",
          state: true,
        ),
        SizedBox(height: 32),
      ],
    );
  }
}
