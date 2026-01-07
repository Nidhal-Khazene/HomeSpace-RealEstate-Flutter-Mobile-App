import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  static const routeName = "HelpCenter";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(children: []),
        ),
      ),
    );
  }
}
