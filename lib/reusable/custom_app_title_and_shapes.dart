import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:places/colors/colors.dart';
import 'package:places/reusable/label.dart';
import 'package:places/reusable/shape_circle.dart';
import 'package:places/reusable/shape_square.dart';

class CustomAppTitleAndShapes extends StatelessWidget {
  const CustomAppTitleAndShapes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.03,
        vertical: MediaQuery.of(context).size.height * 0.04,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //First title
          Animate(
            effects: [FadeEffect(duration: Duration(milliseconds: 1000))],
            child: CustomLabel(
              name: "Hi, Marina",
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400),
            ),
          ),

          //Second title
          CustomLabel(
                name: "Let's Select your\nperfect place",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(color: kBlack),
              )
              .animate()
              .slideY(
                begin: 1.0,
                end: 0,
                duration: 1000.ms,
                curve: Curves.easeOut,
              )
              .fadeIn(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),

          //Shapes
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Animate(
                    effects: [
                      FadeEffect(
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.fastOutSlowIn,
                      ),
                      ScaleEffect(
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.easeIn,
                      ),
                    ],
                    child: ShapeCircle(
                      firstLabel: "BUY",
                      secondLabel: "1 038",
                      thirdLabel: "Offers",
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Animate(
                    effects: [
                      FadeEffect(
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.fastOutSlowIn,
                      ),
                      ScaleEffect(
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.easeIn,
                      ),
                    ],
                    child: ShapeSquare(
                      firstLabel: "RENT",
                      secondLabel: "2 212",
                      thirdLabel: "Offers",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
