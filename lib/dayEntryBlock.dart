import 'package:flutter/material.dart';

class dayEntryBlock extends StatelessWidget {

  var time;
  var content;

  dayEntryBlock(this.time, this.content);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text("$time",
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontStyle: FontStyle.italic,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 5.0,),
                Container(
                  padding: EdgeInsets.fromLTRB(25,20,25,20),
                  decoration: BoxDecoration(
                    color: Color(0xff007EA7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("$content",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
