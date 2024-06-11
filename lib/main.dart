import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:Homepage(),
    theme: ThemeData(
        primarySwatch: Colors.red,
    ),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(
       title: Text("My new project"),
     ),
      body: Container(
        child: Text("An App",),color: Colors.orange,
      ),
    );
  }
}
