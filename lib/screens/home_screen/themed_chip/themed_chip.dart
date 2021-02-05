import 'package:flutter/material.dart';

class ThemedChip extends StatelessWidget {
  final String text;
  final bool isSelected;
  const ThemedChip({
    @required this.text,
    @required this.isSelected,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Chip(
        labelPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
        label: isSelected
            ? Text(text, style: TextStyle(color: Colors.white))
            : Text(
                text,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
        backgroundColor:
            isSelected ? Theme.of(context).primaryColor : Colors.green.shade100,
      ),
    );
  }
}
