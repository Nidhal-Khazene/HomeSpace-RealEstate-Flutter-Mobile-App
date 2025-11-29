import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';

class SendEnquiryView extends StatelessWidget {
  const SendEnquiryView({super.key});
  static const routeName = "sendEnquiry";
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
