import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habitup_journal/dayEntryBlock.dart';
import 'package:habitup_journal/moodIndicator.dart';
import 'package:date_util/date_util.dart';
import 'package:date_util/date_util.dart';
import 'package:habitup_journal/calendarData.dart';

import 'dayCard.dart';


class monthView extends StatefulWidget {
  var calendarData;

  monthView(){
    DateTime now = new DateTime.now();
    DateTime lastDayOfMonth = new DateTime(now.year, now.month + 1, 0);
    print("${lastDayOfMonth.month}/${lastDayOfMonth.day}");
    var dateUtility = DateUtil();
    var day1 = dateUtility.daysInMonth(1, 2022);
    print(day1);
    var day2 = dateUtility.daysInMonth(2, 2018);
    print(day2);
    calendarData = getCalendarData(lastDayOfMonth.day);
    print(calendarData);

  }
  @override
  _monthViewState createState() => _monthViewState();
}

class _monthViewState extends State<monthView> {

  var progressUpdate = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Your Journal",
          style: TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff007EA7),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff003459),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
            child: Column(
              children: [

                //Month Selector
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        print("Previous Month");
                      },
                      child: Text(
                          "<",
                        style: TextStyle(
                          fontSize: 40,
                          color: Color(0xffffffff),
                        ),
                      ),

                    ),
                    Text(
                        "January, 2022",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 20,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        print("Next Month");
                      },
                      child: Text(
                        ">",
                        style: TextStyle(
                          fontSize: 40,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 30,),

                //Progress Update
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("You did better this month than $progressUpdate% of users",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Image(
                      height: 20,
                        width: 20,
                        image: NetworkImage("https://cdn-icons.flaticon.com/png/128/1629/premium/1629881.png?token=exp=1646119763~hmac=c1b548b747bfac4785246e62a7f5d5a0")
                    ),
                  ],
                ),

                SizedBox(height: 30,),

                //Mood Indicators
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    moodIndicator("Positive", 0xff70E000),
                    moodIndicator("Neutral", 0xff0096C7),
                    moodIndicator("Negative", 0xffD00000),
                  ],
                ),
                SizedBox(height: 30,),
                Column(
                  children: widget.calendarData.entries.map<Widget>((mapEntry) => dayCard(mapEntry.key, mapEntry.value)).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
