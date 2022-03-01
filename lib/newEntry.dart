import 'package:flutter/material.dart';
import 'package:habitup_journal/moodBlock.dart';
class newEntry extends StatelessWidget {

  Color blue1 = Color(0xff003459);
  Color blue2 = Color(0xff007EA7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("New Journal Entry"),
        backgroundColor: blue2,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: blue1,
        ),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0,0,25.0,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30,),

              //Mood Block - twxt question + 3 emojis
              moodBlock(),
              SizedBox(height: 50,),

              //Date time above text box
              Text("31st January, 2022, 11:30am",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontStyle: FontStyle.italic,
                  fontSize: 11,
                ),
              ),
              SizedBox(height: 20,),

              //Text field for input
              TextField(
                maxLines: 15,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20,20,20,20),
                  hintText: "Start Typing.....",
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color(0xffffffff),
                    fontSize: 14,
                  ),
                  fillColor: blue2,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
              SizedBox(height: 15,),
              TextButton(
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff007EA7)),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Color(0xffffffff),
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
