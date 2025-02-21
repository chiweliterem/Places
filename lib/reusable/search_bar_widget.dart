import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/colors/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 65.0, horizontal: 20.0),
        child: Row(
          children: [
            //Search text field
            Expanded(
              flex: 8,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.055,
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: TextFormField(
                  controller: TextEditingController(text: "Saint Petersburg"),
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: kBlack,
                  cursorHeight: 15.0,
                  cursorWidth: 1.0,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(color: kBlack),
                  decoration: InputDecoration(
                    fillColor: kWhite,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: 2.0,
                    ),
                    prefixIcon: SvgPicture.asset(
                      "assets/svgs/search_outline.svg",
                      width: 20.0,
                      height: 20.0,
                    ),
                  ),
                ),
              ),
            ),

            //Filter
            Expanded(
              flex: 2,
              child: CircleAvatar(
                maxRadius: 25.0,
                backgroundColor: kWhite,
                child: SvgPicture.asset("assets/svgs/filter.svg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
