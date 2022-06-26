import 'package:facebook_ui/sections/statusSection.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/appBarButtons.dart';
import 'package:facebook_ui/sections/headerButtonSection.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            AppBarButtons(
              icon: Icon(Icons.search),
              onPressed: () {
                print("Go to search screen");
              },
            ),
            AppBarButtons(
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
            Divider(
              thickness: 1,
                color: Colors.grey[300],
            ),
            HeaderButtonSection(),
            Divider(thickness: 10,color: Colors.grey[300],),


          ],
        ),
      ),
    );
  }
}

