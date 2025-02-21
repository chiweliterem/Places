import 'package:flutter/material.dart';
import 'package:places/reusable/custom_navigation_bar.dart';
import 'package:places/reusable/search_bar_widget.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, boxConstraints) {
          return Container(
            width: boxConstraints.maxWidth,
            height: boxConstraints.maxHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/navigation.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                //Search bar widget
                SearchBarWidget(),

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
