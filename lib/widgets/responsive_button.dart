import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.mainColor,
          boxShadow: [
            BoxShadow(
                color: AppColors.mainColor.withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 5)
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          "img/button-one.png",
        )
      ]),
    );
  }
}
