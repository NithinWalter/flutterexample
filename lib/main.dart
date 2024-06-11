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
      body: Center(
        child: Container(
          height: 500,
          color: Colors.deepPurpleAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                alignment: Alignment.center,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                alignment: Alignment.center,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.black,
                alignment: Alignment.center,
              ),

            ],
          ),
        )
      ),
    );
  }
}
