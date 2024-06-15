import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_ninja/styles/app_color.dart';

class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                color: AppColor.secondary,
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Text(
                        'Your Balance:',
                        style:
                            TextStyle(fontSize: 20.0, color: AppColor.primary),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '\$500.00',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primary),
                      ),
                      SizedBox(height: 20.0),
                      Wrap(
                        spacing: 30,
                        runSpacing: 30,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColor.primary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                child: Text(
                                  'Cash In',
                                  style: TextStyle(
                                      color: AppColor.secondary,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {}),
                          ),
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColor.primary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                child: Text(
                                  'Withdraw',
                                  style: TextStyle(
                                      color: AppColor.secondary,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {}),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
