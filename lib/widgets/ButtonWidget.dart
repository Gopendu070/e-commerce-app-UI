import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ButtonWidget extends StatelessWidget {
  String imgPath;
  String label;
  ButtonWidget({super.key, required this.imgPath, required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(label);
        Fluttertoast.showToast(
            msg: label + " Section",
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Color.fromARGB(168, 117, 117, 117));
      },
      child: Column(
        children: [
          Container(
            height: 50,
            child: Image.asset(
              imgPath,
            ),
          ),
          Text(
            label,
            style: TextStyle(color: Colors.grey[500], fontSize: 14),
          )
        ],
      ),
    );
  }
}
