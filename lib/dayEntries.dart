import 'package:flutter/material.dart';
import 'package:habitup_journal/dayEntryBlock.dart';


class dayEntry extends StatelessWidget {
  Color blue1 = Color(0xff003459);
  Color blue2 = Color(0xff007EA7);

  var entryData = {
    "9:30 am" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.",
    "1:30 pm" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non",
    "6:30 pm" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    "11:45 pm" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Daily Entry"),
        backgroundColor: blue2,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(25,10,25,0),
        decoration: BoxDecoration(
          color: blue1,
        ),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                  children: entryData.entries.map((mapEntry) => dayEntryBlock(mapEntry.key, mapEntry.value)).toList(),
                ),
              
              TextButton(
                  onPressed: (){
                    print("New journal Entry Button pressed");
                    Navigator.pushNamed(context, '/newEntry');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff007EA7)),
                  ),
                  child: Text(
                      "New Journal Entry",
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
    );
  }
}
