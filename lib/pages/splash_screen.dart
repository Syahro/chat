import 'package:chat/pages/home_page.dart';
import 'package:chat/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 130,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 348,
                height: 285,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/illustration.png',
                    ),
                  ),
                ),
              ),
              Text(
                'instant messaging, simple\nAnd personal',
                style: titleTextStyle.copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'start your new journey in the Chat Us',
                style: subTitleTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 55,
                width: 180,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  },
                  color: purpleColor,
                  child: Text(
                    'Let\'s Begin',
                    style: titleTextStyle.copyWith(
                      fontSize: 20,
                      color: whiteColor,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
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
