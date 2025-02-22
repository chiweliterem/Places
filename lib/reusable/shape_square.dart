import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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

            //Implementing animation
            TweenAnimationBuilder<int>(
              tween: IntTween(begin: 1, end: 1038),
              duration: 1500.ms, // Adjust animation duration
              builder: (_, value, __) {
                return CustomLabel(
                      name:
                          value.toString() == "1038"
                              ? secondLabel
                              : value.toString(),
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 40.0,
                        color: kAppBarText,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                    .animate() // Apply flutter_animate effects
                    .fadeIn(duration: 300.ms) // Fade in the number smoothly
                    .scale(
                      begin: Offset(0.5, 2.0),
                      end: Offset(1.0, 1.0),
                      duration: 300.ms,
                    );
              },
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
