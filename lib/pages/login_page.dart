

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled14/pages/home_page.dart';
import 'package:untitled14/utils/play_animation_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 250,),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 40),
              child:
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Center(
                    child: PlayAnimationWidget(delay: 1.5, child:  Text('orpho', style: GoogleFonts.montserrat(fontSize: 45, color: Colors.white),),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  PlayAnimationWidget(delay: 1.7, child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 20,
                          offset: Offset(0, 10)
                        )
                      ]
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.green
                              )
                            )
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Имя пользователя',
                              hintStyle: TextStyle(color: Colors.grey)
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'ID',
                              hintStyle: TextStyle(color: Colors.grey)
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                  ),
                   const SizedBox(height: 40,),
                    PlayAnimationWidget(delay: 1.7, child: Center(
                    child: Text(
                      'Восстановить доступ',
                      style: GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                    ),
                   )),
                   const SizedBox(height: 20,),

                   PlayAnimationWidget(delay: 1.9, 
                   child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child){
            return FadeTransition(opacity: animation, child: child);
          },
                ),
              );
                    },
                     child: Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Text(
                          'ВОЙТИ',
                          style:  GoogleFonts.montserrat(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ),
                     ),
                   )
                   ),


                   const SizedBox(height: 20,),
                  PlayAnimationWidget(delay: 2.1, child: Center(
                    child: Text(
                      'Получить доступ',
                      style: GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                    ),
                   )),
                   const SizedBox(height: 30,)
                ],
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
