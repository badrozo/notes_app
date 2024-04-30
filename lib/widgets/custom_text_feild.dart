import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.maxLines});
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
        maxLines: maxLines,
        cursorColor: KprimaryColor,
        decoration: InputDecoration(
          hintText: 'Title',
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder(KprimaryColor),
        ));
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
