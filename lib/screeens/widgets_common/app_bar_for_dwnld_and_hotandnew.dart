import 'package:flutter/material.dart';

class AppBArWidget extends StatelessWidget {
  const AppBArWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cast),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(

            decoration: const BoxDecoration(
              color: Colors.blueAccent,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('asset/images/Netflix-avatar.png'),
              ),
            ),
            width: 35,
            height:10,
          ),
        ),
      ],
    );
  }
}
