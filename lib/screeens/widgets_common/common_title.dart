import 'package:flutter/material.dart';

class HomeScreenTitleWidget extends StatelessWidget {
  final String title;
  const HomeScreenTitleWidget({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      title,
      style: const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
