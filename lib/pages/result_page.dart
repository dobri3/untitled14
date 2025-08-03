import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Вы завершили тест. \n СТОЛЬКО правильных ответов',
            style: GoogleFonts.montserrat(fontSize: 28, color: Colors.grey)),
              const SizedBox(height: 20,),
              TextButton(onPressed: (){

              }, child: Text('Посмотреть ошибки', style: GoogleFonts.montserrat(fontSize: 20, color: Colors.grey)))
            ],
          ),

      ),
    );
  }
}
