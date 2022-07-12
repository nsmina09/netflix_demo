import 'package:flutter/material.dart';

class HomeScreenPosterWidget extends StatelessWidget {
  const HomeScreenPosterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * .3,
        height: MediaQuery.of(context).size.width * .5,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://www.themoviedb.org/t/p/w220_and_h330_face/tvhX4QQnMyMjlFeShLCXovvbf0c.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
