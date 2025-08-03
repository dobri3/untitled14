import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled14/models/word.dart';

import 'package:untitled14/pages/main_train_page.dart';


class TrainPage extends StatefulWidget {

  final List<Word> wordList;


  const TrainPage( {super.key,
    required this.wordList
  });

  @override
  State<TrainPage> createState() => _TrainPageState();
}

class _TrainPageState extends State<TrainPage> {
  // final Function answerQuestion;
  @override
  Widget build(BuildContext context) {
    // QuestionController(wordList);
    final questionColor = Colors.black;
    final buttonRightColor = Colors.grey;
    final buttonWrongColor = Colors.grey;

final controller = context.watch<QuestionController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Text("orpho", style: GoogleFonts.montserrat(fontSize: 28, color: Colors.white),),
        toolbarHeight: 56,
        centerTitle: true,
        backgroundColor: Colors.grey,
        // leading:
        // IconButton(icon: const Icon( Icons.menu_rounded, color: Colors.white, size: 30,), onPressed: (){},),
      ),
      body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text(
                    controller.wordList[controller.currentQuestionIndex].writtenAns,
                      style: GoogleFonts.montserrat(
                    color: questionColor, fontSize: 30, fontWeight: FontWeight.bold
                  ),
                  ),

                SizedBox(height: 50,),
                Row(
                  children: [
                    SizedBox(width: 25,),
                    Container(
                      width: 150,
                      margin: const EdgeInsets.all(10),
                      child: FloatingActionButton(onPressed:
                        ()=> controller.answerQuestion(1, questionColor, buttonRightColor, buttonWrongColor, context, ),

                      backgroundColor: buttonRightColor,
                      child: Text('верно', style: GoogleFonts.montserrat(
                        fontSize: 25,
                        color: Colors.white,),),),),
                    SizedBox(width: 15,),
                    Container(
                      width: 150,
                      margin: const EdgeInsets.all(10),
                      child: FloatingActionButton(onPressed:
                      ()=> controller.answerQuestion(0, questionColor, buttonRightColor, buttonWrongColor, context, ),
                      backgroundColor: buttonWrongColor,
                      child: Text('неверно', style: GoogleFonts.montserrat(
                        fontSize: 25,
                        color: Colors.white,),),),),
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  width: 180,
                  margin: const EdgeInsets.all(10),
                  child: FloatingActionButton(onPressed:
                      ()=> controller.nextQuestion(context,  questionColor, buttonRightColor, buttonWrongColor,),
                    backgroundColor: Colors.grey,
                    child: Text('продолжить', style: GoogleFonts.montserrat(
                      fontSize: 25,
                      color: Colors.white,),),),),
              ],
            ),
          ),

      ),
    );
  }
}
