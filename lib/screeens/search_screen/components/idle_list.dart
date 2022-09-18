import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/core/url/base_url.dart';

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
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error while loading data'),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('No Movies to show'),
                );
              }
              return ListView.separated(
                itemBuilder: (context, index) {
                  final movie = state.idleList[index];
                  return IdleSearchMovieWidget(
                    movieName: movie.title,
                    imageUrl: '$imageAppendUrl${movie.posterPath}',
                  );
                },
                itemCount: state.idleList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class IdleSearchMovieWidget extends StatelessWidget {
  final String movieName;
  final String imageUrl;
  const IdleSearchMovieWidget({
    Key? key,
    required this.movieName,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .5,
          height: MediaQuery.of(context).size.width * .25,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageUrl,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            movieName,
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
