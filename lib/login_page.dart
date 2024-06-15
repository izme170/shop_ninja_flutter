import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_ninja/styles/app_color.dart';
import 'package:shop_ninja/widgets/login_form.dart';
import 'package:shop_ninja/widgets/signup_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(gradient: AppColor.gradientBackground),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 300,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                              children: const <TextSpan>[
                            TextSpan(
                                text: 'Shop',
                                style: TextStyle(color: AppColor.primary)),
                            TextSpan(
                                text: 'Ninja',
                                style: TextStyle(color: AppColor.secondary))
                          ])),
                      Image.asset(
                        'assets/images/shopNinjaLogo.png',
                        width: 100,
                      )
                    ]),
                    SizedBox(
                      height: 100,
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
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return LoginForm();
                              });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.primary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)))),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: AppColor.secondary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return SignupForm();
                              });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
