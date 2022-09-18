import 'package:flutter/material.dart';

class EveryOnesWatching extends StatelessWidget {
  const EveryOnesWatching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        EveryoneWatchingItem(),
        EveryoneWatchingItem(),
        EveryoneWatchingItem(),
      ],
    );
  }
}

class EveryoneWatchingItem extends StatelessWidget {
  const EveryoneWatchingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Tall Girl',
          style: TextStyle(fontSize: 40),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 20.0),
          child: Text(
            'sssssssssss ssssssss'
            'sssssssssssssssssssssssssssssssssssssssssssss',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.withOpacity(.6),
            ),
          ),
        ),
        Stack(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w220_and_h330_face/qJRB789ceLryrLvOKrZqLKr2CGf.jpg'),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.volume_mute_outlined),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _iconTextButton(text: 'Share', icon: Icons.share),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: _iconTextButton(text: 'My List', icon: Icons.add),
              ),
              _iconTextButton(text: 'Play', icon: Icons.play_arrow)
            ],
          ),
        )
      ],
    );
  }
}

Column _iconTextButton({
  required String text,
  required IconData icon,
}) {
  return Column(
    children: [
      Icon(
        icon,
        size: 20,
      ),
      Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 15,
          color: Colors.grey,
        ),
      )
    ],
  );
}
