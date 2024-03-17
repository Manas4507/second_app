import 'package:flutter/material.dart';
import 'package:second_app/answerbutton.dart';
import 'package:second_app/data/questions.dart';
class QuestionsScreen extends StatefulWidget{
 const QuestionsScreen({super.key});

 
  @override
  State <QuestionsScreen> createState(){
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{

  var currentQuestionIndex=0;

  void answerQuestion(){

    setState(() {
      currentQuestionIndex++;
    });
    

  }
  @override
  Widget build(context){
    final  currentQuestion=questions[currentQuestionIndex];
    return SizedBox(
      width: double.maxFinite,
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(30),
        
        child: Column(
        // const EdgeInsets.only(top: 30),
          mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: [
             Text(currentQuestion.text,textAlign: TextAlign.center,),
            const SizedBox(height: 25,),
        
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(answerText: answer, ontap: answerQuestion,);
            }),
            
            // AnswerButton(answerText: currentQuestion.ans[0], ontap: (){}),
            //  AnswerButton(answerText: currentQuestion.ans[1], ontap: (){}),
            //   AnswerButton(answerText: currentQuestion.ans[2], ontap: (){}),
            //    AnswerButton(answerText: currentQuestion.ans[3], ontap: (){})
          ],
        ),
      ),
    );
  }
}