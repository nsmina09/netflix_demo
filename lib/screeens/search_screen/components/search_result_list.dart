import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Movies and TV',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 26,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: GridView.count(
            childAspectRatio: 1 / 1.4,
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            children: List.generate(
              20,
              (index) {
                return const SearchResultMovieWidget();
              },
            ),
          ),
        ),
      ],
    );
  }
}

class SearchResultMovieWidget extends StatelessWidget {
  const SearchResultMovieWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
