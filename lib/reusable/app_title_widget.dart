import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/colors/colors.dart';
import 'package:places/view_model/navigation_view_model.dart';
import 'package:provider/provider.dart';

class AppTitleWidget extends StatefulWidget {
  final String title;

  const AppTitleWidget({super.key, required this.title});

  @override
  State<AppTitleWidget> createState() => _AppTitleWidgetState();
}

class _AppTitleWidgetState extends State<AppTitleWidget> {
  late NavigationViewModel _viewModel;

  @override
  void initState() {
    super.initState();

    _viewModel = context.read<NavigationViewModel>();

    Future.delayed(Duration(milliseconds: 100), () {
      _viewModel.updateContainerWidth(
        width: MediaQuery.of(context).size.width * .4,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationViewModel>(
      builder: (_, model, __) {
        return model.renderAnimation
            ? AnimatedContainer(
              duration: 1800.ms, // Animation duration
              curve: Curves.easeIn, // Smooth animation
              width: _viewModel.customWidth,
              height: MediaQuery.of(context).size.height * .05,
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/svgs/location.svg",
                        width: 15,
                        height: 15,
                      ).animate(delay: 2500.ms),
                      SizedBox(width: 5.0).animate(delay: 2500.ms),
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.bodySmall,
                      ).animate(delay: 2500.ms),
                    ],
                  ).animate(delay: 2500.ms).fadeIn(),
            ).animate()
            : Container(
              width: _viewModel.customWidth,
              height: MediaQuery.of(context).size.height * .05,
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svgs/location.svg",
                    width: 15,
                    height: 15,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            );
      },
    );
  }
}
