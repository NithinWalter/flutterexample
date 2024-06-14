import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:nithinflutter/widgets/LogIn.dart";
import "package:nithinflutter/widgets/YellowBlackB.dart";

class onboarding3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 123.98),
        Container(
          child: Row(
            children: [
              SizedBox(width: 36),
              SvgPicture.asset("assets/scooty.svg"),
            ],
          ),
        ),
        SizedBox(
          height: 132.75,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 35.0),
          child: Expanded(
              child: Text(
            "Fast and responsibily delivery by our courir ",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
            textAlign: TextAlign.center,
          )),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 35.0),
          child: Expanded(
              child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
            textAlign: TextAlign.center,
          )),
        ),
        Spacer(),
        signinwidget(
          title: "Create Account",
          type2: true,

        ),
        Spacer(),
        LogIn(),
        Spacer(),
      ],
    ));
  }
}
