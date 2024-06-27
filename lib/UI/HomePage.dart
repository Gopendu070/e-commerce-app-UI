import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluxstore/widgets/ButtonWidget.dart';
import 'package:fluxstore/widgets/FashionTile.dart';
import 'package:fluxstore/widgets/Helper.dart';
import 'package:fluxstore/widgets/LeadingButtonList.dart';
import 'package:fluxstore/widgets/SlideIndicator.dart';
import 'package:fluxstore/widgets/SliderTileWidget.dart';
import 'package:fluxstore/widgets/SquareTile.dart';

//We can use a stateless widget as no need to change the state
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexValue = 0;

  @override
  Widget build(BuildContext context) {
    var Width = MediaQuery.of(context).size.width;
    var Height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "lib/assets/icons/app_icon.jpg",
              height: 35,
            ),
            Text(
              " Fluxstore",
              style: TextStyle(
                  color: Colors.grey[500], fontWeight: FontWeight.w500),
            ),
          ],
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 238, 243, 251),
          type: BottomNavigationBarType.fixed,
          currentIndex: indexValue,
          onTap: (value) {
            print(value);
            setState(() {
              indexValue = value;
            });
          },
          showUnselectedLabels: false,
          items: navBarItemList()),
      body: Padding(
        padding: const EdgeInsets.all(11),
        child: Scrollbar(
          radius: const Radius.circular(70),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: Width,
                  child: const LeadingButtonList(),
                ),
                const SizedBox(height: 4),
                //Slider
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color.fromARGB(255, 195, 194, 194),
                        Color.fromARGB(195, 248, 247, 247),
                      ])),
                  child: Stack(children: [
                    CarouselSlider(
                        items: [
                          SliderTileWidget(
                            Width: Width,
                            label1: "Summer Collection",
                            label2: "Blue Summer are already in store",
                            imgPath: "lib/assets/images/girl1_rm.png",
                          ),
                          SliderTileWidget(
                            Width: Width,
                            label1: "Saree Collection",
                            label2: "Take a look at these limited sarees",
                            imgPath: "lib/assets/images/girl2_rm.png",
                          ),
                          SliderTileWidget(
                            Width: Width,
                            label1: "Men's Collection",
                            label2: "Grab the latest trends for you",
                            imgPath: "lib/assets/images/boyrm.png",
                          ),
                        ],
                        options: CarouselOptions(
                            onPageChanged: (index, _) {
                              setState(() {
                                Helper.slidingIndex = index;
                              });
                            },
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 4),
                            height: Height * 0.3,
                            enableInfiniteScroll: true,
                            viewportFraction: 0.99)),
                    Positioned(
                      bottom: 3,
                      child: Container(
                        width: Width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SlideIndicator(
                              index: 0,
                            ),
                            SlideIndicator(
                              index: 1,
                            ),
                            SlideIndicator(
                              index: 2,
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
                const SizedBox(height: 7),

                //Men
                const FashionTile(
                  label1: "For Gen",
                  label2: "HANG OUT & PARTY",
                  imgName: "boyrm",
                ),
                const SizedBox(height: 7),
                SizedBox(
                  height: Height * 0.18 + 5,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SquareTile(
                        label1: "T-Shirt",
                        label2: "THE OFFICE LIFE",
                        imgPath: "lib/assets/images/manrm.png",
                      ),
                      SquareTile(
                        label1: "Dress",
                        label2: "ELEGANT \nDESIGN",
                        imgPath: "lib/assets/images/womanrm.png",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 7),

                //Kids
                const FashionTile(
                  label1: "For Kids",
                  label2: "COMFY & JOYFUL",
                  imgName: "kidrm",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> navBarItemList() {
    return [
      const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined), label: "Shop"),
      const BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined), label: "Cart"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined), label: "Profile"),
    ];
  }
}
