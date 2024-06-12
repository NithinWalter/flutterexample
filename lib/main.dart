import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:Homepage(),
    theme: ThemeData(
        primarySwatch: Colors.red,
    ),
  ));
}

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
      drawer: Drawer(
        child:ListView(
          padding:const EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(accountName:const Text("Julie"),
                accountEmail:const Text("julie@gmail.com"),
                currentAccountPicture:const CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1557053910-d9eadeed1c58?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d29tYW4lMjBwb3J0cmFpdHxlbnwwfHwwfHx8MA%3D%3D"),),
            ),
            ListTile(
              leading:const Icon(Icons.person),
              title:const Text("Julie"),
              subtitle:const Text("Developer"),
              trailing:const Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
                leading:const Icon(Icons.mail),
                title:const Text("Email"),
                subtitle:const Text("julie@gmail.com"),
                trailing:const Icon(Icons.edit),
              onTap:  () {},
            ),

          ],
        )
      ),
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
