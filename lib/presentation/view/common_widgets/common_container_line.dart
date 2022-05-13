import 'package:flutter/material.dart';

class CommonContainerLine extends StatelessWidget {
  const CommonContainerLine({Key? key, required this.width, required this.height, required this.circular, required this.color}) : super(key: key);

  final double width;
  final double height;
  final double circular;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(height: height,
      decoration: BoxDecoration(
        color:color,
        borderRadius: BorderRadius.all(Radius.circular(circular)
      ),
    ));
  }
}
