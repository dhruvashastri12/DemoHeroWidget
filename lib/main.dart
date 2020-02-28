import 'package:demo_hero_widget/SingleCardListview.dart';
import 'package:flutter/material.dart';
import 'DetailScreen.dart';
import 'ContactPOJO.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main() => runApp(HeroApp());

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation = 10.0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal,
      body: SingleCardListview(), // Method 1 - to showcase error by multiple listtile in listview with static tag


      // body: ListTileInCard(), // Method 2 - to showcase resolving error converting listview into listview.builder
    );
  }
}
