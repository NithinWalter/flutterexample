import "package:flutter/material.dart";
import "package:nithinflutter/pages/login_page.dart";

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 318,
        height: 60,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage() ));
          },
          child: Text(
            "LOGIN",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: Colors.black)),
          ),
        ));
  }
}
