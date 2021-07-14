import 'package:chat/theme.dart';
import 'package:flutter/material.dart';

class DividerSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 80,
        right: defaultMargin,
      ),
      child: Divider(
        color: Colors.white.withOpacity(0.4),
      ),
    );
  }
}
