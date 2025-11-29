import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';

class SendEnquirySuccessView extends StatelessWidget {
  const SendEnquirySuccessView({super.key});
  static const routeName = "sendEnquirySuccessView";

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
