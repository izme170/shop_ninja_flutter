import 'package:flutter/material.dart';

class ProfileManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Jerico Lopez',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'jerico@email.com',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 100,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(Icons.sell_rounded),
              title: Text(
                'Become a seller',
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(Icons.report),
              title: Text(
                'Report a Problem',
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text(
                'FAQ',
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text(
                'Change Account',
                style: TextStyle(fontSize: 25),
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
