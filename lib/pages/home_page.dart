import 'package:chat/theme.dart';
import 'package:chat/widget/divider_space.dart';
import 'package:chat/widget/floating_button.dart';
import 'package:chat/widget/message_inbox.dart';
import 'package:chat/widget/user_hero.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/user.png',
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Michael Lock',
                        style: titleTextStyle.copyWith(
                          fontSize: 22,
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/menu.png',
                        height: 14,
                        width: 18,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Online',
                        style: titleTextStyle.copyWith(fontSize: 20),
                      ),
                      Text(
                        '4',
                        style: titleTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: defaultMargin),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        UserHero(
                          imageUrl: 'assets/user.png',
                          isActive: false,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        UserHero(
                          imageUrl: 'assets/user1.png',
                          isActive: true,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        UserHero(
                          imageUrl: 'assets/user2.png',
                          isActive: true,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        UserHero(
                          imageUrl: 'assets/user3.png',
                          isActive: true,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        UserHero(
                          imageUrl: 'assets/user4.png',
                          isActive: true,
                        ),
                        SizedBox(
                          width: defaultMargin,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Messages',
                        style: titleTextStyle.copyWith(fontSize: 20),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MessageInbox(
                  imageUrl: 'assets/user1.png',
                  name: 'Keazia De Rezia',
                  message: 'Sent a Photo',
                  time: 'NOW',
                ),
                DividerSpace(),
                MessageInbox(
                  imageUrl: 'assets/user7.png',
                  name: 'Peter Park',
                  message: 'Oke, sure',
                  time: '11:2 PM',
                ),
                DividerSpace(),
                MessageInbox(
                  imageUrl: 'assets/user2.png',
                  name: 'Loila Bae',
                  message: 'Don\'t forget group as...',
                  time: '10:6 PM',
                ),
                DividerSpace(),
                MessageInbox(
                  imageUrl: 'assets/user5.png',
                  name: 'Ben Markz',
                  message: 'Check you Email!',
                  time: '9:11 PM',
                ),
                DividerSpace(),
                MessageInbox(
                  imageUrl: 'assets/user3.png',
                  name: 'Alice March',
                  message: 'No. Sorry',
                  time: 'Yesterday',
                ),
                DividerSpace(),
                MessageInbox(
                  imageUrl: 'assets/user6.png',
                  name: 'Josh George',
                  message: 'Sent Sticker',
                  time: 'Yesterday',
                ),
                SizedBox(
                  height: 75,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
