

import 'package:flutter/material.dart';

import 'package:second_app/que_screen.dart';
import 'package:second_app/start_screen.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/result_screen.dart';
class Quiz extends StatefulWidget{
 const Quiz({super.key});

 
 @override
  State<Quiz> createState(){
    return _Quizstate();
  }
}

class _Quizstate extends State<Quiz>{


   List<String> selectedAnswers=[];
  var activeScreen='start-screen';

// @override
//   void initState() {
//     activeScreen=StartScreen(switchScreen);
//     super.initState();
//   }
  void switchScreen (){
    setState(() {
      selectedAnswers=[];
      activeScreen= 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length==questions.length){
      setState(() {
        activeScreen='results-screen';
      });
    }
  }
@override


Widget build(context) {

  Widget screenWidget=StartScreen(switchScreen);
  if (activeScreen=='questions-screen'){
    screenWidget= QuestionsScreen(onSelectAnswer: chooseAnswer,);
  }

  if(activeScreen=='results-screen'){
    screenWidget=const ResultScreen();
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