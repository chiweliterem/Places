import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/colors/colors.dart';

class CustomFab extends StatelessWidget {
  const CustomFab({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 75.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 25.0,
                      backgroundColor: kFAB,
                      child: SvgPicture.asset(
                        "assets/svgs/layer.svg",
                        color: kWhite,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    CircleAvatar(
                      maxRadius: 25.0,
                      backgroundColor: kFAB,
                      child: SvgPicture.asset(
                        "assets/svgs/location_arrow.svg",
                        color: kWhite,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: FloatingActionButton(
                  onPressed: () {},
                  isExtended: true,
                  backgroundColor: kFAB,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/svgs/align_left.svg"),
                      SizedBox(width: 5.0),
                      Text(
                        "Lists of variants",
                        style: Theme.of(
                          context,
                        ).textTheme.titleSmall?.copyWith(color: kWhite),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
