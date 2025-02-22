import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/colors/colors.dart';
import 'package:places/enum/enum.dart';
import 'package:places/screens/home.dart';
import 'package:places/screens/navigation.dart';
import 'package:places/view_model/navigation_view_model.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  late NavigationViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = context.read<NavigationViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Consumer<NavigationViewModel>(
        builder: (_, model, __) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 50.0),
            padding: EdgeInsets.symmetric(horizontal: 5.0),
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
                      //Calling updateCurrentItem function
                      model.updateCurrentItem(Item.search);

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => NavigationScreen(),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      maxRadius: 27.0,
                      backgroundColor:
                          model.currentItem == Item.search
                              ? kPrimary
                              : Colors.transparent,
                      child: SvgPicture.asset("assets/svgs/search.svg"),
                    ).animate().scale(
                      curve: Curves.fastOutSlowIn,
                      duration: 1000.ms,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      //Calling updateCurrentItem function
                      model.updateCurrentItem(Item.messaging);
                    },
                    child: CircleAvatar(
                      maxRadius: 27.0,
                      backgroundColor:
                          model.currentItem == Item.messaging
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
                      //Calling updateCurrentItem function
                      model.updateCurrentItem(Item.home);

                      //Stop the animation from running again
                      model.stopAnimation(isRunning: false);

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Home(appName: "Places"),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      maxRadius: 27.0,
                      backgroundColor:
                          model.currentItem == Item.home
                              ? kPrimary
                              : Colors.transparent,
                      child: SvgPicture.asset(
                        "assets/svgs/home.svg",
                        color: kWhite,
                      ),
                    ).animate().scale(
                      curve: Curves.fastOutSlowIn,
                      duration: 1000.ms,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      //Calling updateCurrentItem function
                      model.updateCurrentItem(Item.love);
                    },
                    child: CircleAvatar(
                      maxRadius: 27.0,
                      backgroundColor:
                          model.currentItem == Item.love
                              ? kPrimary
                              : Colors.transparent,
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
                      //Calling updateCurrentItem function
                      model.updateCurrentItem(Item.user);
                    },
                    child: CircleAvatar(
                      maxRadius: 27.0,
                      backgroundColor:
                          model.currentItem == Item.user
                              ? kPrimary
                              : Colors.transparent,
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
          );
        },
      ),
    );
  }
}
