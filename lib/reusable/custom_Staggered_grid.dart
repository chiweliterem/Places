import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:places/colors/colors.dart';

class CustomStaggeredGrid extends StatefulWidget {
  final BoxConstraints boxConstraints;
  final double height;

  const CustomStaggeredGrid({
    super.key,
    required this.boxConstraints,
    required this.height,
  });

  @override
  State<CustomStaggeredGrid> createState() => _CustomStaggeredGridState();
}

class _CustomStaggeredGridState extends State<CustomStaggeredGrid> {
  //Custom swipeable button
  Widget _customSwipeableButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: SwipeButton(
        thumbPadding: EdgeInsets.all(2),
        elevationThumb: 7,
        thumb: Icon(Icons.arrow_forward_ios, color: kBlack, size: 15.0),
        activeThumbColor: kWhite,
        activeTrackColor: kSwipeableBg,
        onSwipe: () {},
        child: Text(
          "Gladkova St., 25",
          style: Theme.of(
            context,
          ).textTheme.titleSmall?.copyWith(color: kBlack),
        ),
      ),
    );
  }

  //This function creates each image tile
  Widget _buildItem(String imageUrl, Widget widget, {double height = 100}) {
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
        alignment: Alignment.bottomCenter,
        child: widget,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: widget.boxConstraints.maxWidth,
        height: widget.height,
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
                  "assets/images/kitchen.jpg",
                  _customSwipeableButton(),
                  height: 200,
                ),
              ),
              StaggeredGridTile.fit(
                crossAxisCellCount: 1,
                child: _buildItem(
                  "assets/images/kitchen.jpg",
                  _customSwipeableButton(),
                  height: 400,
                ),
              ),
              StaggeredGridTile.fit(
                crossAxisCellCount: 1,
                child: _buildItem(
                  "assets/images/kitchen.jpg",
                  _customSwipeableButton(),
                  height: 200,
                ),
              ),
              StaggeredGridTile.fit(
                crossAxisCellCount: 1,
                child: _buildItem(
                  "assets/images/kitchen.jpg",
                  _customSwipeableButton(),
                  height: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
