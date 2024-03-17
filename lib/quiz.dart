

import 'package:flutter/material.dart';

import 'package:second_app/que_screen.dart';
import 'package:second_app/start_screen.dart';

class Quiz extends StatefulWidget{
 const Quiz({super.key});

 
 @override
  State<Quiz> createState(){
    return _Quizstate();
  }
}

class _Quizstate extends State<Quiz>{
  var activeScreen='start-screen';

// @override
//   void initState() {
//     activeScreen=StartScreen(switchScreen);
//     super.initState();
//   }
  void switchScreen (){
    setState(() {
      activeScreen= 'questions-screen';
    });
  }
@override


Widget build(context) {

  Widget screenWidget=StartScreen(switchScreen);
  if (activeScreen=='questions-screen'){
    screenWidget=const QuestionsScreen();
  }
  return  MaterialApp(
      home:Scaffold(
        body: Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.deepOrange,Colors.yellowAccent])
          ),
          child:screenWidget,
          ),
      )
    );
}
}