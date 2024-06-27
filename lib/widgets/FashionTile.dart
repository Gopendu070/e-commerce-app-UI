import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FashionTile extends StatefulWidget {
  const FashionTile({
    super.key,
    required this.label1,
    required this.label2,
    required this.imgName,
  });

  final String label1;
  final String label2;
  final String imgName;

  @override
  State<FashionTile> createState() => _FashionTileState();
}

class _FashionTileState extends State<FashionTile> {
  bool isHolding = false;
  void _longPressUpFunction() {
    setState(() {
      isHolding = false;
    });

    print(isHolding);
  }

  void _longPressDownFunction(LongPressDownDetails details) {
    setState(() {
      isHolding = true;
    });
    print(isHolding);
  }

  @override
  Widget build(BuildContext context) {
    var Width = MediaQuery.of(context).size.width;
    var Height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onLongPressDown: _longPressDownFunction,
      onLongPressUp: _longPressUpFunction,
      child: Container(
        height: Height * 0.22,
        width: Width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(171, 239, 237, 237),
          Color.fromARGB(121, 134, 144, 168)
        ])),
        child: Stack(children: [
          Positioned(
            top: (Height * 0.22) / 2 - 25,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.label1,
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(154, 97, 97, 97)),
                ),
                Text(
                  widget.label2,
                  style: TextStyle(
                      fontSize: 21, color: Color.fromARGB(183, 97, 97, 97)),
                ),
              ],
            ),
          ),
          Positioned(
            right: 2,
            bottom: 0,
            child: Container(
              height: Height * 0.22,
              width: Width * 0.42,
              child: Image.asset(
                isHolding
                    ? "lib/assets/images/${widget.imgName}.png"
                    : "lib/assets/images/${widget.imgName}2.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
