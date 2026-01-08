import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/widgets/custom_app_bar.dart';
import 'package:home_space/core/widgets/custom_profile_photo_container.dart';

import '../../../../../core/utils/assets.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});
  static const routeName = "EditProfile";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(
            children: [
              CustomAppBar(title: "Edit Profile"),
              SizedBox(height: 56),
              CustomProfilePhotoContainer(
                profilePhoto: Assets.assetsImagesPersonalAccount,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
