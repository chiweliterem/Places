import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:places/reusable/custom_fab.dart';
import 'package:places/reusable/custom_house_ticker.dart';
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
                Animate(
                  effects: [
                    ScaleEffect(
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.easeIn,
                      alignment: Alignment.topCenter,
                    ),
                  ],
                  child: SearchBarWidget(),
                ),

                //House tickers
                CustomHouseTicker(),

                //Bottom Navigation bar
                CustomNavigationBar(),

                //Two floating action buttons and an extended FAB
                CustomFab(),
              ],
            ),
          );
        },
      ),
    );
  }
}
