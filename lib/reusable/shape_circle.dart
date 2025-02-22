import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
                        color: kWhite,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                    .animate() // Apply flutter_animate effects
                    .fadeIn(duration: 300.ms) // Fade in the number smoothly
                    .scale(
                      begin: Offset(0.5, 2.0),
                      end: Offset(1.0, 1.0),
                      duration: 300.ms,
                    ); // Subtle scale effect
              },
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
