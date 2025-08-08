import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled14/pages/main_drawer.dart';
import 'package:untitled14/pages/train_choose_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(

        title: Text("orpho", style: GoogleFonts.montserrat(fontSize: 28, color: Colors.white),),
        toolbarHeight: 56,
        centerTitle: true,
        backgroundColor: Colors.grey,
        // leading:
        // IconButton(icon: const Icon( Icons.menu_rounded, color: Colors.black, size: 30,), onPressed: (){},),
          actions: [
      Padding(padding: const EdgeInsets.only(right: 15),
        child: IconButton(icon: const Icon(Icons.settings_rounded, color: Colors.white, size: 30,), onPressed: (){},),
      ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child:
            FloatingActionButton(onPressed: (){
              Navigator.push(context, PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => const Train_Choose_Page(),
                transitionsBuilder: (context, animation, secondaryAnimation, child){
                  return FadeTransition(opacity: animation, child: child);
                },
              ),
              );
            },
              backgroundColor: Colors.grey,
              child: Text('тренировка', style: GoogleFonts.montserrat(
                  fontSize: 25,
                  color: Colors.white,),),
            ),),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          child:
            FloatingActionButton(onPressed: (){
              // Navigator.push(context, PageRouteBuilder(
              //   pageBuilder: (context, animation, secondaryAnimation) =>
              //       TrainPage(questionWord: DICTIONARY[2],),
              //   transitionsBuilder: (context, animation, secondaryAnimation, child){
              //     return FadeTransition(opacity: animation, child: child);
              //   },
              // ),
              // );
            },
              backgroundColor: Colors.grey,
              child: Text('словарь', style: GoogleFonts.montserrat(
                fontSize: 25,
                color: Colors.white,),),),),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          child:
            FloatingActionButton(onPressed: (){},
              backgroundColor: Colors.grey,
              child: Text('добавить слово', style: GoogleFonts.montserrat(
                fontSize: 25,
                color: Colors.white,),),),),
          ],
        ),
      ),
    );
  }
}
