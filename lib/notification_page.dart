import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Free \$500 voucher ${index + 1}'),
            subtitle: Text('Please claim your free voucher.'),
            onTap: () {},
          );
        },
      ),
    );
  }
}
