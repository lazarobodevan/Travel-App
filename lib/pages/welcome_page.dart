import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/widgets/activity_count.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

import '../cubit/app_cubits.dart';
import '../misc/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["welcome-one.png", "welcome-two.png", "welcome-three.png"];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: images.length,
              onPageChanged: (int page) {
                pageIndex = page;
                print(pageIndex);
                setState(() {});
              },
              itemBuilder: (_, index) {
                return Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/${images[index]}"),
                          fit: BoxFit.cover)),
                  child: Container(
                      margin:
                          const EdgeInsets.only(top: 150, left: 20, right: 20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppLargeText(text: "Trips"),
                              AppText(text: "Mountain", size: 30),
                              const SizedBox(height: 20),
                              Container(
                                  width: 250,
                                  child: AppText(
                                    text:
                                        "Mountain hikes give you an incredible sense of freedom along with endurance tests",
                                    color: AppColors.textColor2,
                                    size: 14,
                                    lineHeight: 1.5,
                                  )),
                              const SizedBox(
                                height: 40,
                              ),
                              GestureDetector(
                                onTap: () {
                                  BlocProvider.of<AppCubits>(context).getData();
                                },
                                child: Container(
                                  width: 200,
                                  child: Row(
                                    children: [
                                      ResponsiveButton(
                                        width: 100,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                );
              }),
          Positioned(
              top: 140,
              left: 380.0,
              child: PageCounter(
                index: pageIndex,
              )),
        ],
      ),
    );
  }
}
