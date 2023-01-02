import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/widgets/app_button.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

import '../misc/colors.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Scaffold(
          body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 390,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/mountain.jpeg"),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          )),
          Positioned(
              top: 330,
              child: Container(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                              text: "Yosemite",
                              color: Colors.black54.withOpacity(0.8)),
                          AppLargeText(
                              text: "\$250", color: AppColors.mainColor)
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(Icons.location_on,
                              color: AppColors.mainColor),
                          const SizedBox(width: 5),
                          AppText(
                              text: "USA, California",
                              color: AppColors.textColor1),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                  index < gottenStars
                                      ? Icons.star
                                      : Icons.star_border,
                                  color: AppColors.starColor);
                            }),
                          ),
                          const SizedBox(width: 10),
                          AppText(text: "(4.0)", color: AppColors.textColor2)
                        ],
                      ),
                      const SizedBox(height: 25),
                      AppLargeText(
                        text: "People",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      const SizedBox(height: 5),
                      AppText(
                        text: "Number of people in your group",
                        color: AppColors.mainTextColor,
                      ),
                      const SizedBox(height: 5),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButton(
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                backgroundColor: selectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                borderColor: selectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                size: 50,
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 30),
                      AppLargeText(
                          text: "Description",
                          color: Colors.black.withOpacity(0.8),
                          size: 20),
                      const SizedBox(height: 5),
                      AppText(
                          text:
                              "You must go for a travel. Travelling helps get rid of pressure. Go to the mountains to see the nature.",
                          color: AppColors.mainTextColor),
                    ]),
              )),
          Positioned(
              bottom: 40,
              left: 30,
              right: 30,
              child: Row(
                children: [
                  AppButton(
                    color: AppColors.textColor1,
                    backgroundColor: Colors.white,
                    borderColor: AppColors.textColor1,
                    size: 60,
                    isIcon: true,
                    icon: Icons.favorite_border,
                  ),
                  const SizedBox(width: 20),
                  ResponsiveButton(
                    isResponsive: true,
                  )
                ],
              ))
        ],
      )),
    );
  }
}
