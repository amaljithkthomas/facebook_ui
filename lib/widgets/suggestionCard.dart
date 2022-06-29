import 'package:facebook_ui/widgets/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String? avatar;
  final String? avatarName;
  final String? mutualfriends;

  SuggestionCard({
    required this.avatar,
    required this.avatarName,
    this.mutualfriends
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: suggestionImage(),
          ),
          Positioned(bottom: 0, left: 0, right: 0, child: suggestionDetails())
        ],
      ),
    );
  }

  Widget suggestionImage() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(15), topLeft: Radius.circular(15)),
      child: Image.asset(
        avatar!,
        fit: BoxFit.cover,
        height: 250,
        //height: 280,
      ),
    );
  }

  Widget suggestionDetails() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      height: 130,
      child: Column(
        children: [
          ListTile(
            title: Text(avatarName!),
            subtitle: (mutualfriends != null)?Text("$mutualfriends Mutual frinds"): Text("0 Mutual frinds"),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                iconButton(
                  buttonAction: () {
                    print("Add friend button clicked");
                  },
                  icon: Icons.add_moderator,
                  iconColor: Colors.white,
                  buttonName: "Add Friend",
                  buttonTextColor: Colors.white,
                  buttonColor: Colors.blue[700],
                ),
                iconButton(
                  buttonAction: () {
                    print("Remove button clicked");
                  },
                  icon: Icons.delete,
                  iconColor: Colors.white,
                  buttonName: "Remove",
                  buttonTextColor: Colors.white,
                  buttonColor: Colors.redAccent[700],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget iconButton({
    required void Function()? buttonAction,
    required IconData? icon,
    required Color? iconColor,
    required String? buttonName,
    required Color? buttonTextColor,
    required Color? buttonColor,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        icon,
        color: iconColor,
      ),
      label: Text(
        buttonName!,
        style: TextStyle(color: buttonTextColor),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          buttonColor,
        ),
      ),
    );
  }
}
