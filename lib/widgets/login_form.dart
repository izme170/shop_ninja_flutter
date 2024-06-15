import 'package:flutter/material.dart';
import 'package:shop_ninja/styles/app_color.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 35,
                    color: AppColor.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColor.secondary, width: 2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Username',
                  labelStyle: TextStyle(color: AppColor.disabled),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColor.secondary, width: 2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Password',
                  labelStyle: TextStyle(color: AppColor.disabled),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Forgot Password?'),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.secondary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)))),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: AppColor.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
