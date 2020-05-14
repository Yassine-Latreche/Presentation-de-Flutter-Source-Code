import 'package:flutter/material.dart';
import 'package:presentation/slides/couverture.dart';
import 'package:presentation/slides/intro.dart';
import 'package:presentation/slides/intro_c.dart';
import 'package:presentation/slides/pourquoi.dart';
import 'package:presentation/slides/pourquoi_c_one.dart';
import 'package:presentation/slides/pourquoi_c_two.dart';
import 'package:presentation/slides/pourquoi_c_three.dart';
import 'package:presentation/slides/comment.dart';
import 'package:presentation/slides/comment_c_one.dart';
import 'package:presentation/slides/comment_c_two.dart';
import 'package:presentation/slides/comment_c_three.dart';
import 'package:presentation/slides/demo.dart';
import 'package:presentation/slides/demo_c.dart';
import 'package:presentation/slides/apprendre.dart';
import 'package:presentation/slides/apprendre_c.dart';
import 'package:presentation/slides/fin.dart';

int milisec = 750;
double offset = 100;
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Présentation de Flutter',
      initialRoute: '/1',
      routes: {
        '/1': (context) => Couverture(),
        '/2': (context) => Intro(),
        '/3': (context) => IntroC(),
        '/4': (context) => Pourquoi(),
        '/5': (context) => PourquoiCOne(),
        '/6': (context) => PourquoiCTwo(),
        '/7': (context) => PourquoiCThree(),
        '/8': (context) => Comment(),
        '/9': (context) => CommentCOne(),
        '/10': (context) => CommentCTwo(),
        '/11': (context) => CommentCThree(),
        '/12': (context) => Demo(),
        '/13': (context) => DemoC(),
        '/14': (context) => Apprendre(),
        '/15': (context) => ApprendreC(),
        '/16': (context) => Fin(),
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
