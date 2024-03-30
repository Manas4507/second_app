import 'package:flutter/material.dart';

 class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key});
  @override

  Widget build( context) {
    return SizedBox(
      width: double.maxFinite,
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(30), 
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
      children: [
        Text('You answered x out of y question'),
        SizedBox(height: 30,),
        Text('list of ans and questions...'),
        SizedBox(height: 30,),
        TextButton(onPressed: (){}, child: Text('Restart quiz'))
      ],
        ),
        ),
        );
    
    
  }
 }