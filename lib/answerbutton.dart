import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class AnswerButton extends StatelessWidget{

   AnswerButton({required this.answerText,required this.ontap,super.key});

  final String answerText;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    // 
    return ElevatedButton(
      onPressed: ontap, 
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 80,
          vertical: 14,
        ),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 198, 14, 33),
        shape:BeveledRectangleBorder(borderRadius: BorderRadius.circular(35)),
        
      ),
      child: Text(answerText,textAlign: TextAlign.center,),) ;
      
  }
}