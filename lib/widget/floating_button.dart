import 'package:chat/theme.dart';
import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: Color(0XFF2F3142),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.chat,
                  color: purpleColor,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'chats',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: purpleColor,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.call,
                  color: Colors.white.withOpacity(0.6),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Calls',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(0.6),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
