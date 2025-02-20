import 'package:flutter/material.dart';
import 'package:places/colors/colors.dart';
import 'package:places/reusable/app_title_widget.dart';
import 'package:places/reusable/custom_app_title_and_shapes.dart';
import 'package:places/reusable/custom_navigation_bar.dart';

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
        title: AppTitleWidget(title: "Saint Petersburg"),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profileImg.png"),
          ),
        ],
        actionsPadding: EdgeInsets.symmetric(horizontal: 10.0),
      ),

      //Scaffold body
      body: LayoutBuilder(
        builder: (context, boxConstraints) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
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
            child: Stack(
              children: [
                //Custom app titles
                CustomAppTitleAndShapes(),

                //Animated container
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.46,
                    decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                ),

                //Bottom Navigation bar
                CustomNavigationBar(),
              ],
            ),
          );
        },
      ),
    );
  }
}
