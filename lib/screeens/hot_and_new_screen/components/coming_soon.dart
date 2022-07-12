import 'package:flutter/material.dart';
import 'package:netflix_app/screeens/screen_fast_laughs/components/video_item_widget.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [ComingSoonWidgetItem(),
        ComingSoonWidgetItem(),
      ],
    );
  }
}

class ComingSoonWidgetItem extends StatelessWidget {
  const ComingSoonWidgetItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Text(
              'Feb',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey.withOpacity(.6),
              ),
            ),
            const Text(
              '11',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 5.0),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width * .75,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/k0ThmZQl5nHe4JefC2bXjqtgYp0.jpg'),
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
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Tall Girl',
                      style: TextStyle(fontSize: 40),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    _iconTextButton(icon: Icons.lock_clock, text: 'Reminder'),
                    const SizedBox(
                      width: 20,
                    ),
                    _iconTextButton(icon: Icons.info, text: 'info')
                  ],
                ),
                const Text(
                  'Coming on Friday',
                  style: TextStyle(color: Colors.grey),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Text(
                    'Tall Girl',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 28.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: Text(
                      'sssssssssss ssssssss'
                      'sssssssssssssssssssssssssssssssssssssssssssss',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.withOpacity(.6),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
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
        size: 15,
      ),
      Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 12,
          color: Colors.grey,
        ),
      )
    ],
  );
}
