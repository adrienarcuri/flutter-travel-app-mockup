import 'package:flutter/material.dart';

class IconItem extends StatelessWidget {
  final String image;
  final String text;
  const IconItem({
    @required this.image,
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            image,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(text),
      ],
    );
  }
}
