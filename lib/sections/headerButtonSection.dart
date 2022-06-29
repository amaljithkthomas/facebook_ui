import 'package:flutter/material.dart';

import '../widgets/headerButton.dart';

class HeaderButtonSection extends StatelessWidget {
  final Widget? buttonOne;
  final Widget? buttonTwo;
  final Widget? buttonThree;

  HeaderButtonSection({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree
  });

  // Widget headerButton({
  //   required void Function()? onPressed,
  //   required IconData? icon,
  //   required Color? iconColor,
  //   required String? buttonName,
  //   required Color? buttonTextColor,
  // }) {
  //   return TextButton.icon(
  //     onPressed: onPressed,
  //     icon: Icon(
  //       icon,
  //       color: iconColor,
  //     ),
  //     label: Text(
  //       buttonName!,
  //       style: TextStyle(color: buttonTextColor),
  //     ),
  //   );
  // }

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
          buttonOne!,
          verticalDivider,
          buttonTwo!,
          verticalDivider,
          buttonThree!,
        ],
      ),
    );
  }
}
