import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget{


   const StartScreen( this.startQuiz,{super.key});

     final void Function() startQuiz;
  

    
   @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz.png',width: 250,),
          
          const  SizedBox(height: 40,),
          const Text('Learn flutter the fun way!',
          style: TextStyle(
            fontSize: 28,
            color: Color.fromARGB(235, 255, 0, 0),
          ),
          ),
          const SizedBox(height: 20,),
          OutlinedButton.icon(onPressed: (){
            startQuiz();
          },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.redAccent,
            ),
            icon: const Icon(Icons.arrow_right_alt),
           label: const Text('Start quiz'))
        ],
      ),
    ) ;
  }
}