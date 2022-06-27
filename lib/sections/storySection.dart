import 'package:facebook_ui/widgets/circularButton.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/assets.dart';
import 'package:facebook_ui/widgets/storyCard.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            storyImage: dq_2,
            labelText: "Add to story",
            avatar: dq_2,
            createStoryStatus: true,
          ),
          StoryCard(
            storyImage: fishing,
            labelText: "Sebin syriac",
            avatar: fishing,
            createStoryStatus: false,
          ),
          StoryCard(
            storyImage: sujith,
            labelText: "sujith",
            avatar: sujith,
            createStoryStatus: false,
          ),
          StoryCard(
            storyImage: dulq_4,
            labelText: "Sunny wyane",
            avatar: sunny,
            createStoryStatus: false,
          ),
          StoryCard(
            storyImage: pranav,
            labelText: "Tovino Thomas",
            avatar: tovino,
            createStoryStatus: false,
          ),
          StoryCard(
            storyImage: nivin,
            labelText: "Nivin Pauly",
            avatar: nivin,
            createStoryStatus: false,
          ),
          StoryCard(
            storyImage: fahad,
            labelText: "Fahad Fazil",
            avatar: fahad,
            createStoryStatus: false,
          ),
          StoryCard(
            storyImage: mohanlal_1,
            labelText: "Mohanalal",
            avatar: mohanlal_1,
            createStoryStatus: false,
          ),
          StoryCard(
            storyImage: kajal,
            labelText: "Kajal Agarwal",
            avatar: kajal,
            createStoryStatus: false,
          ),
          StoryCard(
            storyImage: strell,
            labelText: "Strell",
            avatar: strell,
            createStoryStatus: false,
          ),

        ],
      ),
    );
  }
}

// class StorySection extends StatelessWidget {
//   Widget accountStory() {
//     return Container(
//       //padding: const EdgeInsets.only(left: 5, right: 5,),
//       margin: EdgeInsets.only(
//         left: 5,
//         right: 5,
//       ),
//       child: Stack(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(20),
//             child: Image.asset(
//               dq_2,
//               width: 150,
//               height: 230,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Positioned(
//             top: 5,
//             left: 5,
//             child: CircularButton(
//               icon: Icon(Icons.add),
//               onPressed: () {
//                 print("Add story");
//               },
//               iconColor: Colors.blue,
//             ),
//           ),
//           const Positioned(
//             bottom: 15,
//             left: 15,
//             child: Text(
//               "Add to story",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 250,
//       padding: const EdgeInsets.all(10),
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         padding: EdgeInsets.all(0),
//         children: [
//           accountStory(),
//           //accountStory(),
//         ],
//       ),
//     );
//   }
// }
