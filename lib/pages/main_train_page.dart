import 'package:flutter/material.dart';

import 'package:untitled14/pages/home_page.dart';

import 'package:flutter/services.dart';

import '../models/word.dart';

class QuestionController extends ChangeNotifier {
  final List<Word> wordList;
  int score = 0;
  int currentQuestionIndex = 0;
  QuestionController(this.wordList);

void _resetQuiz(wordList){
    currentQuestionIndex = 0;
    score = 0;
    // wordList = [];
}

void answerQuestion(int selectedAnswerIndex, questionColor, buttonRightColor, buttonWrongColor, BuildContext context){
if(wordList[currentQuestionIndex].writtenAns == wordList[currentQuestionIndex].rightAns){
  // setState(() {
  //   questionColor = Colors.green;
  // });

  if (selectedAnswerIndex == 1){
    score++;
  }
  else{
    HapticFeedback.heavyImpact();
    // setState(() {
    //   buttonWrongColor = Colors.red;
    // });


  }
}
if(wordList[currentQuestionIndex].writtenAns != wordList[currentQuestionIndex].rightAns){
  // setState(() {
  //   questionColor = Colors.red;
  // });

  if (selectedAnswerIndex == 0){
    score++;
  }
  else{
    HapticFeedback.heavyImpact();
    // setState(() {
    //   buttonRightColor = Colors.red;
    // });


  }
}



// if (currentQuestionIndex<(wordList.length - 2)){
//       currentQuestionIndex++;
//     }
//     else{
//       showResultDialoge(context);
//     }
//     notifyListeners();
//
//     // currentQuestionIndex++;
//
// }



}

void nextQuestion(BuildContext context, questionColor, buttonRightColor, buttonWrongColor,){
  if (currentQuestionIndex<(wordList.length - 2)){
    currentQuestionIndex++;
    // setState(() {
    //   buttonRightColor = Colors.grey;
    //   buttonWrongColor = Colors.grey;
    //   questionColor = Colors.black;
    // });

  }
  else{
    showResultDialoge(context, wordList);
  }
  notifyListeners();
}






void showResultDialoge(BuildContext context,
    List<Word> wordList
    ){
    showDialog(context: context, builder:(context) => AlertDialog(
      title: const Text('Результат', style: TextStyle(fontSize: 20),),
                    
      content: Text(
        'Текущий счет $score/${wordList.length}', style: const TextStyle(fontSize: 20),
      ),
      actions: [

        Row(
          children: [
            TextButton(onPressed: (){
              _resetQuiz(wordList);
              Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (context) => const HomePage()),
              (route) => false);
            }, child: const Text('Выйти', style:  TextStyle( fontSize: 20, color: Colors.green),)),
            const SizedBox(width: 10,),
            TextButton(onPressed: (){
              _resetQuiz(wordList);
              Navigator.pop(context);
            }, child: const Text('Заново', style:  TextStyle( fontSize: 20, color: Colors.green),)),
          ],
        )
      ],
    )
     );
  }
}

