import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final Widget? icon;
  final void Function()? onPressed;
  final Color? iconColor;

  CircularButton({
    required this.icon,
    required this.onPressed,
    this.iconColor = Colors.black
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
        color: iconColor,
      ),
    );
  }
}
