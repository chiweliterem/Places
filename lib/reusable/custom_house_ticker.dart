import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/colors/colors.dart';

class CustomHouseTicker extends StatefulWidget {
  const CustomHouseTicker({super.key});

  @override
  State<CustomHouseTicker> createState() => _CustomHouseTickerState();
}

class _CustomHouseTickerState extends State<CustomHouseTicker> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Ticker 1
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.35,
            ),
            child: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7.0),
                  topRight: Radius.circular(7.0),
                  bottomRight: Radius.circular(7.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  "assets/svgs/house.svg",
                  width: 20.0,
                  height: 20.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.0),
          //Ticker 2
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.25,
            ),
            child: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7.0),
                  topRight: Radius.circular(7.0),
                  bottomRight: Radius.circular(7.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  "assets/svgs/house.svg",
                  width: 20.0,
                  height: 20.0,
                ),
              ),
            ),
          ),
          //Ticker 3
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.55,
            ),
            child: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7.0),
                  topRight: Radius.circular(7.0),
                  bottomRight: Radius.circular(7.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  "assets/svgs/house.svg",
                  width: 20.0,
                  height: 20.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 40.0),
          //Ticker 4
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.55,
            ),
            child: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7.0),
                  topRight: Radius.circular(7.0),
                  bottomRight: Radius.circular(7.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  "assets/svgs/house.svg",
                  width: 20.0,
                  height: 20.0,
                ),
              ),
            ),
          ),
          //Ticker 5
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.40,
            ),
            child: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7.0),
                  topRight: Radius.circular(7.0),
                  bottomRight: Radius.circular(7.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  "assets/svgs/house.svg",
                  width: 20.0,
                  height: 20.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          //Ticker 6
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.25,
            ),
            child: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7.0),
                  topRight: Radius.circular(7.0),
                  bottomRight: Radius.circular(7.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  "assets/svgs/house.svg",
                  width: 20.0,
                  height: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
