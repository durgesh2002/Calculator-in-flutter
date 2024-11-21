import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';

class TextWidgetShow extends StatefulWidget {
  const TextWidgetShow({super.key});

  @override
  State<TextWidgetShow> createState() => _TextWidgetShowState();
}

class _TextWidgetShowState extends State<TextWidgetShow> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: (){
        controller.selection =
            TextSelection.collapsed(offset: controller.text.length);
      },
      controller: controller,
      cursorColor: AppColors().text_color_two,
      cursorErrorColor:  AppColors().text_color_two,
      cursorHeight: 30,
      decoration: InputDecoration(

        border: InputBorder.none,
       focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,

      ),
    );
  }
}
