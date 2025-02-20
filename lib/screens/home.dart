import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/colors/colors.dart';

class Home extends StatefulWidget {
  final String appName;

  const Home({super.key, required this.appName});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Container(
          width: MediaQuery.of(context).size.width * .4,
          height: MediaQuery.of(context).size.height * .05,
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/svgs/location.svg",
                width: 15,
                height: 15,
              ),
              SizedBox(width: 5.0),
              Text(
                "Saint Petersburg",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profileImg.png"),
          ),
        ],
        actionsPadding: EdgeInsets.symmetric(horizontal: 10.0),
      ),
      body: LayoutBuilder(
        builder: (context, boxConstraints) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  kBackgroundColor,
                  Colors.orange.shade50,
                  Colors.orange.shade300,
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
