import 'package:flutter/material.dart';

class moodIndicator extends StatelessWidget {
  var color;
  var text;
  moodIndicator(this.text, this.color);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(color),
            borderRadius: BorderRadius.circular(6)
          ),
          height: 12,
          width: 12,
        ),
        SizedBox(width: 10,),
        Text(
            "$text",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
