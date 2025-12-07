import 'package:flutter/material.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';

import '../../../../../constants.dart';

class FavouritesListingCard extends StatelessWidget {
  const FavouritesListingCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
  });

  final String title, image;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width - kHorizontalPadding * 2,
      height: MediaQuery.sizeOf(context).height * 0.17,
      padding: const EdgeInsets.all(4),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white /* Bg1 */,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: const Color(0xFFE9E8E8) /* Stroke */,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Image.asset(
              image,
              height: MediaQuery.sizeOf(context).height * 0.17 - 8,
            ),
            SizedBox(width: 12),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.5 - 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$$price/Week",
                    style: AppStyles.medium12.copyWith(
                      color: ColorsData.kSecondaryColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    height: 38,
                    width: 200,
                    child: Text(title, style: AppStyles.regular12),
                  ),
                  const SizedBox(height: 4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
