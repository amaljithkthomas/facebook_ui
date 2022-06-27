import 'package:facebook_ui/widgets/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/avatar.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayImage: dq_2,displayStatus: false,),
      title: const TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
