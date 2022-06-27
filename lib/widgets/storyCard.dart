import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/assets.dart';
import 'package:facebook_ui/widgets/circularButton.dart';

import 'avatar.dart';

class StoryCard extends StatelessWidget {
  final String? storyImage;
  final String? labelText;
  final String? avatar;
  final bool? createStoryStatus;

  StoryCard({
    required this.storyImage,
    required this.labelText,
    this.avatar,
    this.createStoryStatus = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(
        left: 7,
        right: 4,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(storyImage!),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus! ? CircularButton(
              icon: Icon(Icons.add),
              onPressed: () {
                print("Add story");
              },
              iconColor: Colors.blue,
            ): Avatar(
              displayImage: avatar,
              displayStatus: false,
            )
          ),
           Positioned(
            bottom: 15,
            left: 8,
            child: Text(
              (labelText!= null)? labelText! : "N/A" ,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          )
        ],
      ),
    );
  }
}
