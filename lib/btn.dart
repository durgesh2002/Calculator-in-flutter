
import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';

class CalculatorButtons extends StatefulWidget {
 Color color;
 Color textcolor;
 double screen_heigth;
 double screen_weidth;
 String number;
   CalculatorButtons({super.key,required this.color, required this.screen_heigth,required this.screen_weidth,required this.number, required this.textcolor});

  @override
  State<CalculatorButtons> createState() => _CalculatorButtonsState();
}

class _CalculatorButtonsState extends State<CalculatorButtons> {
  double firstNumber = 0.0;
  double secondNumber = 0.0;
  var user_input = "";
  var output = "";
  var operand ='';

  btnclicked(String value){
    if(value == "AC"){
      user_input = " ";
      output = " ";
      double firstNumber = 0.0;
      double secondNumber = 0.0;
      var operand ='';
    }else if(value == "Del"){
      user_input = user_input.substring(0, user_input.length -1);
    }else if(value == "+" || value == "×"|| value == "÷" || value == "-"){
        firstNumber = int.parse(user_input) as double;
        output ='';
        operand = value;
    }

    print(value);
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius:  BorderRadius.circular(40)
      ),
      onTap: ()=> btnclicked(widget.number),
      splashColor: widget.textcolor,
      child: Container(
        height: widget.screen_heigth * 0.07 ,
        width: widget.screen_weidth * 0.2,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Center(
          child: Text(widget.number,style: TextStyle(color: widget.textcolor,fontSize: widget.screen_weidth *0.06,fontWeight: FontWeight.w500),),
        ),
      ),
    );
  }
}
