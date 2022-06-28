import 'package:facebook_ui/sections/statusSection.dart';
import 'package:facebook_ui/widgets/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/circularButton.dart';
import 'package:facebook_ui/sections/headerButtonSection.dart';
import 'package:facebook_ui/sections/roomSection.dart';
import 'package:facebook_ui/sections/storySection.dart';
import 'package:facebook_ui/widgets/postCard.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thindivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(thickness: 10,color: Colors.grey[300],);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontFamily: "amaljith font",
              fontSize: 28,
            ),
          ),
          actions: [
            CircularButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("Go to search screen");
              },
            ),
            CircularButton(
              icon: Icon(Icons.chat),
              onPressed: () {
                print("Go to messages screen");
              },
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thindivider,
            HeaderButtonSection(),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: fishing,
              profileName: "Sebin Syriac",
              verifiedProfile: true,
              postTime: "5h",
              postImage: ffStory,
              postTittle: "Next fishing video",
              postLikeUpdate: "10k",
              postCommentUpdate: "6k",
              postShareUpdate: "1k",
            ),
            thickDivider,
            PostCard(
              avatar: sujith,
              profileName: "Sujith Bakthan",
              verifiedProfile: true,
              //postTime: "5h",
              postImage: sujith_post,
              postTittle: "Happy Diwali!!!",
              postLikeUpdate: "12k",
              postCommentUpdate: "5k",
            ),
            thickDivider,
            PostCard(
              avatar: kajal,
              profileName: "Kajal Agarwal",
              verifiedProfile: true,
              postTime: "8h",
              postImage: kajalStory,
              //postTittle: "Happy Diwali!!!",
              postLikeUpdate: "100k",
              postCommentUpdate: "50k",
              postShareUpdate: "10k",
            ),
            thickDivider,
            PostCard(
              avatar: amalAvatar,
              profileName: "Amaljith Thomas",
              //verifiedProfile: true,
              //postTime: "8h",
              postImage: amal_post,
              //postTittle: "Happy Diwali!!!",
              postLikeUpdate: "250",
              postCommentUpdate: "50",
              postShareUpdate: "25",
            ),





          ],
        ),
      ),
    );
  }
}

