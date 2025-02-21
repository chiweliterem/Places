import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:places/colors/colors.dart';

class CustomStaggeredGrid extends StatefulWidget {
  final BoxConstraints boxConstraints;

  const CustomStaggeredGrid({super.key, required this.boxConstraints});

  @override
  State<CustomStaggeredGrid> createState() => _CustomStaggeredGridState();
}

class _CustomStaggeredGridState extends State<CustomStaggeredGrid> {
  //This function creates each image tile
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
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: widget.boxConstraints.maxWidth,
        height: widget.boxConstraints.maxHeight * 0.50,
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
                child: _buildItem("assets/images/kitchen.png", height: 200),
              ),
              StaggeredGridTile.fit(
                crossAxisCellCount: 1,
                child: _buildItem("assets/images/kitchen.png", height: 400),
              ),
              StaggeredGridTile.fit(
                crossAxisCellCount: 1,
                child: _buildItem("assets/images/kitchen.png", height: 200),
              ),
              StaggeredGridTile.fit(
                crossAxisCellCount: 1,
                child: _buildItem("assets/images/kitchen.png", height: 200),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
