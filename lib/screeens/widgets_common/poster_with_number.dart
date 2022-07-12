import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'common_poster.dart';

class PosterWithNumberWidget extends StatelessWidget {
  final int index;
  const PosterWithNumberWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: const [
            SizedBox(
              width: 40,
            ),
            HomeScreenPosterWidget(),
          ],
        ),
        Positioned(
          left: 30,
          bottom: 10,
          child: BorderedText(
            strokeColor: Colors.white,
            strokeWidth: 3,
            child: Text(
              '${index+1}',
              style: const TextStyle(
                fontSize: 120,
                color: Colors.black,
                fontWeight: FontWeight.w900,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        )
      ],
    );
  }
}
