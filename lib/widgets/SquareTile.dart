import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  const SquareTile({
    super.key,
    required this.label1,
    required this.label2,
    required this.imgPath,
  });
  final String label1;
  final String label2;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    var Width = MediaQuery.of(context).size.width;
    var Height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: Container(
        width: Width / 2 - 20,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(209, 212, 210, 210),
            Color.fromARGB(255, 246, 244, 244),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        child: Stack(
          children: [
            Positioned(
                right: label1 == "Dress" ? 0 : null,
                left: label1 == "Dress" ? null : 0,
                child: Container(
                  height: Height * 0.18 + 5,
                  child: Image.asset(
                    imgPath,
                    fit: BoxFit.fitHeight,
                  ),
                )),
            Positioned(
              left: label1 == "Dress" ? 7 : null,
              right: 2,
              bottom: 10,
              child: SizedBox(
                width: 90,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label1,
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      Text(
                        label2,
                        style: TextStyle(color: Colors.grey[600], fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
