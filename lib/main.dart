import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled14/models/dictionary.dart';
import 'package:untitled14/pages/main_train_page.dart';
import 'package:untitled14/pages/splash_screen.dart';
import 'package:untitled14/pages/train_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuestionController(DICTIONARY),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,

        ),
        home: const SplashScreen(),
      ),
    );
  }
}

