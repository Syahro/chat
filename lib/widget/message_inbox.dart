import 'package:chat/theme.dart';
import 'package:flutter/material.dart';

class MessageInbox extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String time;

  MessageInbox({
    this.imageUrl,
    this.name,
    this.message,
    this.time,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 50,
            height: 50,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle.copyWith(fontSize: 14),
              ),
              Text(
                message,
                style: subTitleTextStyle.copyWith(fontSize: 12),
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subTitleTextStyle.copyWith(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
