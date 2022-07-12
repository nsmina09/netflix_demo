import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IdleSearchList extends StatelessWidget {
  const IdleSearchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Top Searches',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 26,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return const IdleSearchMovieWidget();
            },
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 20,
              );
            },
          ),
        ),
      ],
    );
  }
}

class IdleSearchMovieWidget extends StatelessWidget {
  const IdleSearchMovieWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .5,
          height: MediaQuery.of(context).size.width * .25,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://www.themoviedb.org/t/p/w220_and_h330_face/77i7EBUyQKOUiZeYQ5tWDGQb0AI.jpg',
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Expanded(
          child: Text(
            'Delux',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 22,
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.play_circle,
              size: 35,
            ))
      ],
    );
  }
}
