import 'package:flutter/material.dart';
import 'package:places/colors/colors.dart';
import 'package:places/reusable/label.dart';

class ShapeCircle extends StatelessWidget {
  final String firstLabel, secondLabel, thirdLabel;

  const ShapeCircle({
    super.key,
    required this.firstLabel,
    required this.secondLabel,
    required this.thirdLabel,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: kPrimary,
      maxRadius: 100.0,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            CustomLabel(
              name: firstLabel,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(color: kWhite),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            CustomLabel(
              name: secondLabel,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 40.0,
                color: kWhite,
                fontWeight: FontWeight.w700,
              ),
            ),
            CustomLabel(
              name: thirdLabel,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 15.0,
                color: kWhite,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
