import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0.35],
                    colors: [Colors.white70, Colors.white])),
            height: 150.0,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Positioned(
          bottom: 20,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 60.0,
            child: FloatingActionButton.extended(
              onPressed: () {},
              label: Text(
                'Visit Place',
              ),
              elevation: 0,
            ),
          ),
        ),
      ],
    );
  }
}
