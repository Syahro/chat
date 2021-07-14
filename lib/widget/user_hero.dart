import 'package:chat/theme.dart';
import 'package:flutter/material.dart';

class UserHero extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  UserHero({
    this.imageUrl,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 50,
      child: Stack(
        children: [
          Image.asset(imageUrl),
          Align(
            alignment:
                (isActive) ? Alignment.bottomRight : Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: (isActive) ? 7 : 0),
              height: (isActive) ? 18 : 25,
              width: (isActive) ? 18 : 25,
              decoration: BoxDecoration(
                color: (isActive) ? Colors.green : Colors.blue,
                borderRadius: BorderRadius.circular((isActive) ? 10 : 15),
                border: Border.all(
                  color: backgroundColor,
                  width: 2,
                ),
              ),
              child: (isActive)
                  ? Container()
                  : Center(
                      child: Icon(
                        Icons.add,
                        color: whiteColor,
                        size: 18,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
