import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/colors/colors.dart';
import 'package:places/enum/enum.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  late Item currentItem;

  @override
  void initState() {
    super.initState();
    currentItem = Item.home;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.075,
        decoration: BoxDecoration(
          color: kBottomAppBarBackground,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  debugPrint("Searching...");
                  setState(() {
                    currentItem = Item.search;
                  });
                },
                child: CircleAvatar(
                  maxRadius: 28.0,
                  backgroundColor:
                      currentItem == Item.search
                          ? kPrimary
                          : Colors.transparent,
                  child: SvgPicture.asset("assets/svgs/search.svg"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentItem = Item.messaging;
                  });
                },
                child: CircleAvatar(
                  maxRadius: 28.0,
                  backgroundColor:
                      currentItem == Item.messaging
                          ? kPrimary
                          : Colors.transparent,
                  child: SvgPicture.asset(
                    "assets/svgs/chat.svg",
                    color: kWhite,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentItem = Item.home;
                  });
                },
                child: CircleAvatar(
                  maxRadius: 28.0,
                  backgroundColor:
                      currentItem == Item.home ? kPrimary : Colors.transparent,
                  child: SvgPicture.asset(
                    "assets/svgs/home.svg",
                    color: kWhite,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentItem = Item.love;
                  });
                },
                child: CircleAvatar(
                  maxRadius: 28.0,
                  backgroundColor:
                      currentItem == Item.love ? kPrimary : Colors.transparent,
                  child: SvgPicture.asset(
                    "assets/svgs/love.svg",
                    color: kWhite,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentItem = Item.user;
                  });
                },
                child: CircleAvatar(
                  maxRadius: 28.0,
                  backgroundColor:
                      currentItem == Item.user ? kPrimary : Colors.transparent,
                  child: SvgPicture.asset(
                    "assets/svgs/person.svg",
                    color: kWhite,
                    width: 20.0,
                    height: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
