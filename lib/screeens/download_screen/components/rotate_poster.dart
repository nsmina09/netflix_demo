
import 'package:flutter/material.dart';

class RotatePosterWidget extends StatelessWidget {
  const RotatePosterWidget({
    Key? key,
    this.angle = 0,
    required this.imageAddress,
    required this.margin,
  }) : super(key: key);
  final double angle;
  final String imageAddress;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle,
        child: Container(
          width: MediaQuery.of(context).size.width * .4,
          height: MediaQuery.of(context).size.width * .6,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageAddress,
                )),
          ),
        ),
      ),
    );
  }
}
