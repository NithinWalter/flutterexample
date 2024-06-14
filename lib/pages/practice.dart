import "package:flutter/material.dart";
import "package:nithinflutter/drawer.dart";

class Homepage extends StatefulWidget {
@override
State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var mytext="Change My Name";
  TextEditingController _namecontroller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar:AppBar(
          title:const Text("My new project"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        drawer: Mydrawer(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Card(
                child: Column(
                  children: [
                    Image.asset("assets/arts4.webp"),
                    SizedBox(height:20),
                    Text(mytext ,
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height:20),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        controller: _namecontroller,
                        decoration: InputDecoration(
                          hintText: "Type Here",
                          labelText: "Type to change",
                          border: OutlineInputBorder(),
                        ),),
                    )

                  ],
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          mytext=_namecontroller.text;
          setState(() {

          });
        },
          backgroundColor:Colors.deepPurpleAccent,
          child:const Icon(Icons.send_rounded),
        )
    );
  }
}