import 'package:flutter/material.dart';
import 'package:habitup_journal/dayEntries.dart';

class dayCard extends StatelessWidget {
  var day;
  var mood;
  var moodColor;

  dayCard(this.day, this.mood){
    if(mood == "pos"){
      moodColor = Color(0xff70E000);
    }else if(mood == "neut"){
      moodColor = Color(0xff0096C7);
    }else{
      moodColor = Color(0xffF80E0E);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, '/dayEntry');
          },
          child: Container(
            padding: EdgeInsets.fromLTRB(0,10,0,10),
            width: double.infinity,
            alignment: Alignment.center,
              decoration: BoxDecoration(
                color: moodColor,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Text("$day"+" January, 2022",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
          ),
        ),
      ],
    );
  }
}
