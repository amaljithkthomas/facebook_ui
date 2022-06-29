import 'package:facebook_ui/widgets/assets.dart';
import 'package:flutter/material.dart';

import '../widgets/suggestionCard.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          ListTile(
            title: Text(
              "People you may know",
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
                //fontWeight: FontWeight.bold
              ),
            ),
            trailing: IconButton(
                onPressed: () {
                  print("Clicked more option");
                },
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey[700],
                )),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            height: 380,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  avatar: amalAvatar,
                  avatarName: "Amaljith Thomas",
                  //mutualfriends: "2",
                ),
                SizedBox(
                  width: 10,
                ),
                SuggestionCard(
                  avatar: fishing,
                  avatarName: "Sebin Syriac",
                  mutualfriends: "25",
                ),
                SizedBox(
                  width: 10,
                ),
                SuggestionCard(
                  avatar: sujith,
                  avatarName: "Sujith Bakthan",
                  mutualfriends: "25",
                ),
                SizedBox(
                  width: 10,
                ),
                SuggestionCard(
                  avatar: strell,
                  avatarName: "Strell",
                  mutualfriends: "35",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
