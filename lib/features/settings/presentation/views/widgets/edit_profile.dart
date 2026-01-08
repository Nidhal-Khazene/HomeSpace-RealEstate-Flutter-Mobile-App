import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/widgets/custom_app_bar.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});
  static const routeName = "EditProfile";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(children: [CustomAppBar(title: "Edit Profile")]),
        ),
      ),
    );
  }
}
