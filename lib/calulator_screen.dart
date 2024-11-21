
import 'package:calculator/constant.dart';
import 'package:calculator/text_widget_show.dart';
import 'package:calculator/top_icons.dart';
import 'package:flutter/material.dart';

import 'btn.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();

}

class _CalculatorScreenState extends State<CalculatorScreen> {


  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_heigth = MediaQuery.of(context).size.height;





    return Scaffold(
      backgroundColor: AppColors().background_color,
      body: Column(
        children: [
          // top two icon
             SafeArea(child: TopIcons(screen_width:screen_width, screen_heigth:  screen_heigth,)),
          // text widget
           Padding(
             padding:  EdgeInsets.only(right: screen_width * 0.04,top:screen_heigth * 0.08),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text('0',style: TextStyle(color: AppColors().text_color_one,fontSize: screen_width *0.2),),
               ],
             ),
           ),
            SizedBox(height: screen_heigth*0.006,),
          //output
          Padding(
            padding:  EdgeInsets.only(right: screen_width * 0.05,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("0",style: TextStyle( color: AppColors().operator_button,fontWeight: FontWeight.bold,fontSize: screen_width * 0.08),),
              ],
            ),
          ),
          // divider
          SizedBox(height: screen_heigth * 0.14,),
          Divider(
            color: Colors.grey.withOpacity(0.3),
          ),
          SizedBox(height: screen_heigth * 0.01,),
          // buttons
          //Row1..
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButtons(color: AppColors().operator_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: 'AC',textcolor: AppColors().text_color_two,),
                CalculatorButtons(color: AppColors().operator_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: 'Del',textcolor: AppColors().text_color_two,),
                CalculatorButtons(color: AppColors().operator_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '+/-',textcolor: AppColors().text_color_two,),
                CalculatorButtons(color: AppColors().operator_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '÷',textcolor: AppColors().text_color_two,),
              ],
            ),
          ),
          //Row 2....
          SizedBox(height: screen_heigth * 0.02,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButtons(color: AppColors().number_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '7',textcolor: AppColors().text_color_one,),
                CalculatorButtons(color: AppColors().number_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '8',textcolor: AppColors().text_color_one,),
                CalculatorButtons(color: AppColors().number_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '9',textcolor: AppColors().text_color_one,),
                CalculatorButtons(color: AppColors().operator_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '×',textcolor: AppColors().text_color_two,),
              ],
            ),
          ),
          // Row 3..
          SizedBox(height: screen_heigth * 0.02,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButtons(color: AppColors().number_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '4',textcolor: AppColors().text_color_one,),
                CalculatorButtons(color: AppColors().number_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '5',textcolor: AppColors().text_color_one,),
                CalculatorButtons(color: AppColors().number_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '6',textcolor: AppColors().text_color_one,),
                CalculatorButtons(color: AppColors().operator_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '-',textcolor: AppColors().text_color_two,),
              ],
            ),
          ),
          //Row 4..
          SizedBox(height: screen_heigth * 0.02,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButtons(color: AppColors().number_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '1',textcolor: AppColors().text_color_one,),
                CalculatorButtons(color: AppColors().number_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '2',textcolor: AppColors().text_color_one,),
                CalculatorButtons(color: AppColors().number_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '3',textcolor: AppColors().text_color_one,),
                CalculatorButtons(color: AppColors().operator_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '+',textcolor: AppColors().text_color_two,),
              ],
            ),
          ),
          //Row 5...
          SizedBox(height: screen_heigth * 0.02,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButtons(color: AppColors().number_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '%',textcolor: AppColors().text_color_one,),
                CalculatorButtons(color: AppColors().number_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '0',textcolor: AppColors().text_color_one,),
                CalculatorButtons(color: AppColors().number_button, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '.',textcolor: AppColors().text_color_one,),
                CalculatorButtons(color: AppColors().text_color_two, screen_heigth: screen_heigth,screen_weidth: screen_width,number: '=',textcolor: AppColors().text_color_one,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
