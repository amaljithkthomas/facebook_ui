import 'package:facebook_ui/sections/statusSection.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/circularButton.dart';
import 'package:facebook_ui/sections/headerButtonSection.dart';
import 'package:facebook_ui/sections/roomSection.dart';
import 'package:facebook_ui/sections/storySection.dart';

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



          ],
        ),
      ),
    );
  }
}

