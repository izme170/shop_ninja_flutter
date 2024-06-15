import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_ninja/styles/app_color.dart';

class SignupForm extends StatelessWidget {
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
                  'Sign Up',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 185,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColor.secondary, width: 2),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Firstname',
                        labelStyle: TextStyle(color: AppColor.disabled),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 185,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColor.secondary, width: 2),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Lastname',
                        labelStyle: TextStyle(color: AppColor.disabled),
                      ),
                    ),
                  ),
                ],
              ),
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
                  labelText: 'Email',
                  labelStyle: TextStyle(color: AppColor.disabled),
                ),
              ),
              SizedBox(
                height: 15,
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
                    'Submit',
                    style: TextStyle(
                        color: AppColor.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Success!'),
                      content: const Text('Do you want to log in?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context)
                              .pushReplacementNamed('/home'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
