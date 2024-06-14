import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:nithinflutter/pages/onboarding3.dart";

import "../widgets/YellowBlackB.dart";

class onboarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [

            Container(
              width: double.maxFinite,
              child: Image.asset("assets/vegetables.png",fit: BoxFit.fitWidth,),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35.0),
              child: Expanded(
                  child: Text(
                    "We provide best quality Fruits to your family",
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
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                    textAlign: TextAlign.center,
                  )),
            ),
            Spacer(),
            signinwidget(
              title: "NEXT",
              type2: false,
              onButtonPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => onboarding3(),));
              },
            ),
            Spacer(),

          ],
        ));
  }
}