import 'package:flutter/material.dart';
import 'package:places/reusable/custom_navigation_bar.dart';

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
