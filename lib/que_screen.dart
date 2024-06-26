import 'package:flutter/material.dart';
import 'package:second_app/answerbutton.dart';
import 'package:second_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
class QuestionsScreen extends StatefulWidget{
 const QuestionsScreen({super.key,required this.onSelectAnswer});

 final void Function(String answer) onSelectAnswer;
  @override
  State <QuestionsScreen> createState(){
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{

  var currentQuestionIndex=0;

  void answerQuestion(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
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
          
          children: <Widget>[
             Text(currentQuestion.text,textAlign: TextAlign.center, style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 21,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
             ),
            const SizedBox(height: 25,),
            
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: AnswerButton(answerText: answer, ontap: (){ answerQuestion(answer);},),
              );
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