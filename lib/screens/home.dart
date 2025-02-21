import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: boxConstraints.maxWidth,
                    height: boxConstraints.maxHeight * 0.50,
                    decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: StaggeredGrid.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 0,
                        children: [
                          StaggeredGridTile.fit(
                            crossAxisCellCount: 2,
                            child: _buildItem(
                              "assets/images/kitchen.png",
                              height: 200,
                            ),
                          ),
                          StaggeredGridTile.fit(
                            crossAxisCellCount: 1,
                            child: _buildItem(
                              "assets/images/kitchen.png",
                              height: 400,
                            ),
                          ),
                          StaggeredGridTile.fit(
                            crossAxisCellCount: 1,
                            child: _buildItem(
                              "assets/images/kitchen.png",
                              height: 200,
                            ),
                          ),
                          StaggeredGridTile.fit(
                            crossAxisCellCount: 1,
                            child: _buildItem(
                              "assets/images/kitchen.png",
                              height: 200,
                            ),
                          ),
                        ],
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
