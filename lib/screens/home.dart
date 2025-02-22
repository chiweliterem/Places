import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:places/colors/colors.dart';
import 'package:places/reusable/app_title_widget.dart';
import 'package:places/reusable/custom_Staggered_grid.dart';
import 'package:places/reusable/custom_app_title_and_shapes.dart';
import 'package:places/reusable/custom_navigation_bar.dart';

class Home extends StatefulWidget {
  final String appName;

  const Home({super.key, required this.appName});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _buildItem(String imageUrl, {double height = 100}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kAppBarBackground,
        title: AppTitleWidget(title: "Saint Petersburg"),
        actions: [
          Animate(
            effects: [
              FadeEffect(
                duration: Duration(milliseconds: 800),
                curve: Curves.fastOutSlowIn,
              ),
              ScaleEffect(
                duration: Duration(milliseconds: 1000),
                curve: Curves.easeIn,
              ),
            ],
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profileImg.png"),
            ),
          ),
        ],
        actionsPadding: EdgeInsets.symmetric(horizontal: 10.0),
      ),

      //Scaffold body
      body: LayoutBuilder(
        builder: (context, boxConstraints) {
          return Container(
            width: boxConstraints.maxWidth,
            height: boxConstraints.maxHeight,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  kBackgroundColor,
                  Colors.orange.shade100,
                  Colors.orange.shade300,
                ],
              ),
            ),
            child: Stack(
              children: [
                //Custom app titles
                CustomAppTitleAndShapes(),

                //Animated container
                CustomStaggeredGrid(boxConstraints: boxConstraints)
                    .animate(delay: Duration(milliseconds: 1200))
                    .slideY(
                      begin: 1.0,
                      end: 0,
                      duration: 1000.ms,
                      curve: Curves.easeOut,
                    ),

                //Bottom Navigation bar
                CustomNavigationBar()
                    .animate(delay: 3000.ms)
                    .slideY(
                      begin: 1.0,
                      end: 0,
                      duration: 600.ms,
                      curve: Curves.easeOut,
                    ),
              ],
            ),
          );
        },
      ),
    );
  }
}
