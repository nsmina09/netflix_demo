import 'package:flutter/material.dart';
import 'components/video_item_widget.dart';

class ScreenFastLaughs extends StatelessWidget {
  const ScreenFastLaughs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
         children:
           List.generate(10, (int index) {
             return FastLaughVideoItem(index: index,);
           } ),
        ),
    );
  }
}
