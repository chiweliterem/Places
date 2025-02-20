import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/colors/colors.dart';

class AppTitleWidget extends StatelessWidget {
  final String title;

  const AppTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .4,
      height: MediaQuery.of(context).size.height * .05,
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/svgs/location.svg", width: 15, height: 15),
          SizedBox(width: 5.0),
          Text(title, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
