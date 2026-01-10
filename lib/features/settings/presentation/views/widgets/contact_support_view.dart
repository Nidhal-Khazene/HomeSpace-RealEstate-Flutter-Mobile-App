import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';

class ContactSupportView extends StatelessWidget {
  const ContactSupportView({super.key});

  static const routeName = "ContactSupportView";

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
