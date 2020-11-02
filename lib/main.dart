import 'package:flutter/material.dart';
import 'package:score_counter/screens/name.dart';
import 'package:score_counter/screens/score.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Score Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/team_name', // rute utama yang dituju saat app berjalan
      routes: {
        '/team_name': (context) => TeamName(),
        '/team_score': (context) => TeamScore(),
      },
      debugShowCheckedModeBanner: false, // sembunyikan banner debug
    );
  }
}
