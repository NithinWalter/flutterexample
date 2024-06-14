import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:nithinflutter/pages/onboarding2.dart";
import "package:nithinflutter/widgets/back.dart";

import "../widgets/YellowBlackB.dart";

class onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Back(p: 10),
      ),
        body: Column(
          children: [

            SizedBox(height:208.88),
            Container(
              width: double.maxFinite,
              child: SvgPicture.asset("assets/ex.svg",fit: BoxFit.fitWidth,),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35.0),
              child: Expanded(
                  child: Text(
                    "Welcome to Fresh Fruits",
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
                    textAlign: TextAlign.center,
                  )),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35.0),
              child: Expanded(
                  child: Text(
                    "Grocery application",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
                    textAlign: TextAlign.center,
                  )),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35.0),
              child: Expanded(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => onboarding2(),));
              },
            ),
            Spacer(),

          ],
        ));
  }
}