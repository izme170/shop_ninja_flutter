import 'package:flutter/material.dart';
import 'package:shop_ninja/home_page.dart';
import 'package:shop_ninja/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopNinja',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(
              title: 'Login',
            ),
        '/home': (context) => HomePage()
      },
    );
  }
}
