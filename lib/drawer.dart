import "package:flutter/material.dart";

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: const EdgeInsets.all(0),
      children: [
        UserAccountsDrawerHeader(
          accountName: const Text("Julie"),
          accountEmail: const Text("julie@gmail.com"),
          currentAccountPicture: const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1557053910-d9eadeed1c58?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d29tYW4lMjBwb3J0cmFpdHxlbnwwfHwwfHx8MA%3D%3D"),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text("Julie"),
          subtitle: const Text("Developer"),
          trailing: const Icon(Icons.edit),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.mail),
          title: const Text("Email"),
          subtitle: const Text("julie@gmail.com"),
          trailing: const Icon(Icons.edit),
          onTap: () {},
        ),
      ],
    ));
  }
}
