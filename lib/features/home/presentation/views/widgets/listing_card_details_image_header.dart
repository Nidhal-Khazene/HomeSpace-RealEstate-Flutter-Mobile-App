import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_go_back_button.dart';

class ListingCardDetailsImageHeader extends StatelessWidget {
  const ListingCardDetailsImageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomGoBackButton(
          widget: const Icon(Icons.close, color: Colors.white, size: 20),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(
          width:
              ((MediaQuery.sizeOf(context).width - kHorizontalPadding) / 2) -
              24 * 2,
        ),
        Text("1/5", style: AppStyles.medium16.copyWith(color: Colors.white)),
      ],
    );
  }
}
