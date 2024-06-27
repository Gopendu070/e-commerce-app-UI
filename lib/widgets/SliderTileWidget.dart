import 'package:flutter/material.dart';

class SliderTileWidget extends StatelessWidget {
  SliderTileWidget({
    super.key,
    required this.Width,
    required this.label1,
    required this.label2,
    required this.imgPath,
  });

  final double Width;
  String label1;
  String label2;
  String imgPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: Width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: SizedBox(
                width: Width / 2.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "|  $label1",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      label2,
                      style: const TextStyle(
                          fontSize: 21,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                child: Image.asset(
              imgPath,
              fit: BoxFit.cover,
            ))
          ],
        ),
      ),
    );
  }
}
