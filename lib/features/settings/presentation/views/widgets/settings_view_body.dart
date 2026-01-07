import 'package:flutter/material.dart';
import 'package:home_space/core/utils/styles.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text("Settings", style: AppStyles.medium16),
        const SizedBox(height: 24),
      ],
    );
  }
}
