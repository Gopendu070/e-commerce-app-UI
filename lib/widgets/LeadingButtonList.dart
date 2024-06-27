import 'package:flutter/material.dart';
import 'package:fluxstore/widgets/ButtonWidget.dart';

class LeadingButtonList extends StatelessWidget {
  const LeadingButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ButtonWidget(imgPath: "lib/assets/icons/Men.jpg", label: "Men"),
        ButtonWidget(imgPath: "lib/assets/icons/Women.jpg", label: "Women"),
        ButtonWidget(
            imgPath: "lib/assets/icons/Clothing.jpg", label: "Clothing"),
        ButtonWidget(imgPath: "lib/assets/icons/Posters.jpg", label: "Posters"),
        ButtonWidget(imgPath: "lib/assets/icons/Music.jpg", label: "Music"),
      ],
    );
  }
}
