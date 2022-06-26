import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
    required void Function()? onPressed,
    required IconData? icon,
    required Color? iconColor,
    required String? buttonName,
    required Color? buttonTextColor,
  }) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: iconColor,
      ),
      label: Text(
        buttonName!,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget verticalDivider = VerticalDivider(
    thickness: 1,
    color: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
            onPressed: () {
              print("Go to live");
            },
            icon: Icons.video_call,
            iconColor: Colors.red,
            buttonName: "Live",
            buttonTextColor: Colors.black,
          ),
          verticalDivider,
          headerButton(
            onPressed: () {
              print("Go to photo Upload");
            },
            icon: Icons.image,
            iconColor: Colors.green,
            buttonName: "Photo",
            buttonTextColor: Colors.black,
          ),
          verticalDivider,
          headerButton(
            onPressed: () {
              print("Go to room");
            },
            icon: Icons.video_call,
            iconColor: Colors.purple,
            buttonName: "Room",
            buttonTextColor: Colors.black,
          ),

        ],
      ),
    );
  }
}
