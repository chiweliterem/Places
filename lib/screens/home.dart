import 'package:flutter/material.dart';
import 'package:places/colors/colors.dart';
import 'package:places/reusable/app_title_widget.dart';
import 'package:places/reusable/label.dart';
import 'package:places/reusable/shape_circle.dart';
import 'package:places/reusable/shape_square.dart';

class Home extends StatefulWidget {
  final String appName;

  const Home({super.key, required this.appName});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: AppTitleWidget(title: "Saint Petersburg"),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profileImg.png"),
          ),
        ],
        actionsPadding: EdgeInsets.symmetric(horizontal: 10.0),
      ),
      body: LayoutBuilder(
        builder: (context, boxConstraints) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  kBackgroundColor,
                  Colors.orange.shade50,
                  Colors.orange.shade300,
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03,
                vertical: MediaQuery.of(context).size.height * 0.04,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //First title
                  CustomLabel(
                    name: "Hi, Marina",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  //Second title
                  CustomLabel(
                    name: "Let's Select your\nperfect place",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge!.copyWith(color: kBlack),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                  //Shapes
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ShapeCircle(
                            firstLabel: "BUY",
                            secondLabel: "1 038",
                            thirdLabel: "Offers",
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: ShapeSquare(
                            firstLabel: "RENT",
                            secondLabel: "2 212",
                            thirdLabel: "Offers",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
