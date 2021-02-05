import 'package:flutter/material.dart';
import 'package:travel_app/screens/get_started_screen/get_started_screen.dart';
import 'package:travel_app/screens/home_screen/home_screen.dart';
import 'package:travel_app/screens/place_screen/place_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green[600],
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SafeArea(
        child: GetStartedScreen(),
      ),
      routes: {
        GetStartedScreen.routeName: (context) => GetStartedScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        PlaceScreen.routeName: (context) => PlaceScreen(),
      },
    );
  }
}
