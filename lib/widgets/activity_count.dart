import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../misc/colors.dart';

class PageCounter extends StatelessWidget {
  const PageCounter({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(3, (indexDots) {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.only(bottom: 2),
        width: 8,
        height: index == indexDots ? 25 : 8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: index == indexDots
                ? AppColors.mainColor
                : AppColors.mainColor.withOpacity(0.3)),
      );
    }));
  }
}
