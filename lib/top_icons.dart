import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';

class TopIcons extends StatelessWidget {
  double screen_width;
  double screen_heigth;
  TopIcons({super.key, required this.screen_width , required this.screen_heigth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: screen_width * 0.03,top: screen_heigth *0.03,left: screen_width* 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.fullscreen_exit,color: AppColors().text_color_one,size:screen_width * 0.06 ,),
          Icon(Icons.settings_outlined,color: AppColors().text_color_one,size:screen_width * 0.06)
        ],
      ),
    );
  }
}
