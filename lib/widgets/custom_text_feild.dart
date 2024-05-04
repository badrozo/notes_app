import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {super.key, required this.maxLines, required this.hint, this.onSaved});
  final int maxLines;
  final String hint;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field cannot be empty';
          } else {
            return null;
          }
        },
        maxLines: maxLines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: hint,
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder(kPrimaryColor),
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
