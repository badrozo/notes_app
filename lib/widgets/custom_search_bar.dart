import 'package:flutter/material.dart';

class CustomSearchView extends StatelessWidget {
  const CustomSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Icon(
          Icons.search,
          size: 26,
        ),
      ),
    );
  }
}
