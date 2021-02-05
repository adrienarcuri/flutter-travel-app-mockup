import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_screen/home_screen.dart';

class GetStartedScreen extends StatelessWidget {
  static const routeName = '/getStarted';

  const GetStartedScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, right: 20, left: 20),
                child: Text(
                  'Get Cultural Experience 🤞',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Image.asset(
                'assets/get_started_screen/traveler.png',
                width: MediaQuery.of(context).size.width * 0.80,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.stop_circle,
                    size: 8,
                    color: Colors.black12,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.stop_circle,
                    color: Colors.black12,
                    size: 8,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.stop_circle,
                    size: 8,
                    color: Colors.black54,
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 18.0, left: 10, right: 10),
                child: FractionallySizedBox(
                  widthFactor: 0.95,
                  child: Container(
                    height: 60.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(HomeScreen.routeName);
                      },
                      child: Text('Get Started'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
