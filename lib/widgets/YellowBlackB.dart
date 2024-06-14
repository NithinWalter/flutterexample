import "package:flutter/material.dart";
import "package:nithinflutter/pages/login_page.dart";
import "package:nithinflutter/pages/onboarding3.dart";

class signinwidget extends StatelessWidget {
  final String title;
  final bool type2;
  final void Function()? onButtonPressed;
  signinwidget({
    super.key,
    required this.title,
    this.type2 = false,
    this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 318,
      height: 60,
      child: ElevatedButton(
        child: Text(
          title,
          style: TextStyle(
              color: type2 ? Colors.white : Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: type2 ? Colors.black : Colors.amber,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        onPressed: () {
          onButtonPressed!.call();
        },
      ),
    );
  }
}
