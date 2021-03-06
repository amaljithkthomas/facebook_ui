import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/assets.dart';

class RoomSection extends StatelessWidget {
  Widget createRoomButton() {
    return Container(
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: OutlinedButton.icon(
        onPressed: () {
          print("Go to chat room");
        },
        icon: const Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: const Text(
          "Create \nRoom",
          style: TextStyle(color: Colors.blue),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all(const StadiumBorder()),
            side: MaterialStateProperty.all(
                BorderSide(color: Colors.blue.shade100, width: 2))),
      ),
    );
  }
  // Widget sizedBox = const SizedBox(
  //   width: 20,
  // );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          createRoomButton(),
          //sizedBox,
          Avatar(displayImage: dq_2,displayStatus: true, ),
          //sizedBox,
          Avatar(displayImage: fishing,displayStatus: true, ),
          //sizedBox,
          Avatar(displayImage: sujith, displayStatus: true,),
          //sizedBox,
          Avatar(displayImage: sunny, displayStatus: true,),
          //sizedBox,
          Avatar(displayImage: tovino, displayStatus: true,),
          //sizedBox,
          Avatar(displayImage: nivin, displayStatus: true,),
          //sizedBox,
          Avatar(displayImage: fahad, displayStatus: true,),
          //sizedBox,
          Avatar(displayImage: mohanlal_1, displayStatus: true,),
          //sizedBox,
          Avatar(displayImage: kajal, displayStatus: true,),
          //sizedBox,
          Avatar(displayImage: strell, displayStatus: true,),

          
        ],
      ),
    );
  }
}
