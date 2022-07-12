import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/idle_list.dart';
import 'components/search_result_list.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(.4),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.white54,
                ),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.white54,
                ),
                style: const TextStyle(
                  color: Colors.white54,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
             // Expanded(child: const IdleSearchList()),
              Expanded(child: const SearchResultList()),
            ],
          ),
        ),
      ),
    );
  }
}
