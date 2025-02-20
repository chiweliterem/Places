import 'package:flutter/material.dart';
import 'package:places/colors/colors.dart';
import 'package:places/reusable/label.dart';

class ShapeSquare extends StatelessWidget {
  final String firstLabel, secondLabel, thirdLabel;

  const ShapeSquare({
    super.key,
    required this.firstLabel,
    required this.secondLabel,
    required this.thirdLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: kRectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomLabel(
              name: firstLabel,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(color: kAppBarText),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.035),
            CustomLabel(
              name: secondLabel,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 40.0,
                color: kAppBarText,
                fontWeight: FontWeight.w700,
              ),
            ),
            CustomLabel(
              name: thirdLabel,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 15.0,
                color: kAppBarText,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
