import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled14/pages/train_page.dart';


import '../models/dictionary.dart';
import '../models/word.dart';



class Train_Choose_Page extends StatefulWidget {
  const Train_Choose_Page({super.key});

  @override
  State<Train_Choose_Page> createState() => _Train_Choose_PageState();
}

class _Train_Choose_PageState extends State<Train_Choose_Page> {

  int k = 0;
  List<Word> wordList = [];

  void resetQuestion(j){
    for (int i = 1; i <= j; i++){
      k = Random().nextInt(j);
      wordList.add(DICTIONARY[k]);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey, foregroundColor: Colors.white,
      title: Text("orpho", style: GoogleFonts.montserrat(fontSize: 28, color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Выберите количество слов', style: GoogleFonts.montserrat(
            fontSize: 26,
            fontWeight: FontWeight.w500,
            color: Colors.grey,)),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child:
                FloatingActionButton(onPressed: (){
                  int j = 16;
                  resetQuestion(j);
                  Navigator.push(context, PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                     TrainPage(
                       wordList: wordList,
                     ),
                    transitionsBuilder: (context, animation, secondaryAnimation, child){
                      return FadeTransition(opacity: animation, child: child);
                    },
                  ),
                  );

                  },
                  backgroundColor: Colors.grey,
                  child: Text('15', style: GoogleFonts.montserrat(
                    fontSize: 25,
                    color: Colors.white,),),
                ),),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child:
                FloatingActionButton(onPressed: (){
                  int j = 20;
                  resetQuestion(j);
                  Navigator.push(context, PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                     TrainPage(
                       wordList: wordList,
                     ),
                    transitionsBuilder: (context, animation, secondaryAnimation, child){
                      return FadeTransition(opacity: animation, child: child);
                    },
                  ),
                  );

                },
                  backgroundColor: Colors.grey,
                  child: Text('20', style: GoogleFonts.montserrat(
                    fontSize: 25,
                    color: Colors.white,),),),),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child:
                FloatingActionButton(onPressed: (){
                  int j = 25;
                  resetQuestion(j);
                  Navigator.push(context, PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                     TrainPage(
                       wordList: wordList,
                       ),
                    transitionsBuilder: (context, animation, secondaryAnimation, child){
                      return FadeTransition(opacity: animation, child: child);
                    },
                  ),
                  );

                },
                  backgroundColor: Colors.grey,
                  child: Text('25', style: GoogleFonts.montserrat(
                    fontSize: 25,
                    color: Colors.white,),),),),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child:
                FloatingActionButton(onPressed: (){
                  int j = 30;
                  resetQuestion(j);
                  Navigator.push(context, PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                     TrainPage(
                       wordList: wordList,
                     ),
                    transitionsBuilder: (context, animation, secondaryAnimation, child){
                      return FadeTransition(opacity: animation, child: child);
                    },
                  ),
                  );

                },
                  backgroundColor: Colors.grey,
                  child: Text('30', style: GoogleFonts.montserrat(
                    fontSize: 25,
                    color: Colors.white,),),),),
            ],
          ),
          ),
        ),

    );
  }
}
