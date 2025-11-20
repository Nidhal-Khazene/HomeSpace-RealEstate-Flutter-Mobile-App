import 'package:flutter/material.dart';
import 'package:home_space/features/home/presentation/views/widgets/home_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [HomeHeader()]);
  }
}
