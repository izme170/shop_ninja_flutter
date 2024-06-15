import 'package:flutter/material.dart';
import 'package:shop_ninja/pages/messages.dart';

class MessageListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Messages"),
        ),
        body: ListTile(
          leading: Icon(Icons.message),
          title: Text('Seller'),
          subtitle: Text('Hi, how can we help?'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MessagesPage()));
          },
        ));
  }
}
