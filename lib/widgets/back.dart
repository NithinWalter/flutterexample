import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";



 class Back extends StatelessWidget {
   final double p;

    Back({super.key, required this.p});

   @override
   Widget build(BuildContext context) {
     return Container(
       padding: EdgeInsets.all(p),


         child:GestureDetector(
           onTap: () {
             Navigator.pop(context);
             // Navigator.pop(context);
           },
           child: SvgPicture.asset("assets/backsymbol.svg",alignment: Alignment.topLeft),
         )
     );


   }
 }
