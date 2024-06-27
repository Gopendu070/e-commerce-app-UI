import 'package:flutter/material.dart';
import 'package:fluxstore/widgets/Helper.dart';

class SlideIndicator extends StatelessWidget {
  SlideIndicator({super.key, required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 3,
        width: 20,
        color:
            index == Helper.slidingIndex ? Colors.grey[500] : Colors.grey[300],
      ),
    );
  }
}
