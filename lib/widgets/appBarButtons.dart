import 'package:flutter/material.dart';

class AppBarButtons extends StatelessWidget {
  final Widget? icon;
  final void Function()? onPressed;

  AppBarButtons({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon!,
        color: Colors.black,
      ),
    );
  }
}
