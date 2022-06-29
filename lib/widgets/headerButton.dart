
import 'package:flutter/material.dart';
Widget headerButton({
  required void Function()? onPressed,
  required IconData? icon,
  required Color? iconColor,
  required String? buttonName,
  required Color? buttonTextColor,
}) {
  return TextButton.icon(
    onPressed: onPressed,
    icon: Icon(
      icon,
      color: iconColor,
    ),
    label: Text(
      buttonName!,
      style: TextStyle(color: buttonTextColor),
    ),
  );
}