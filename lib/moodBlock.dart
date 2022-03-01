import 'package:flutter/material.dart';
import 'package:habitup_journal/moodEmojiBlock.dart';

class moodBlock extends StatefulWidget {
  var selectedMood;

  var sadSelected = false;
  var neutralSelected = false;
  var happySelected = false;
  @override
  _moodBlockState createState() => _moodBlockState();
}

class _moodBlockState extends State<moodBlock> {

  void changeSelected() {
    widget.happySelected = false;
    widget.sadSelected = false;
    widget.neutralSelected = false;
    if(widget.selectedMood == "1"){
      widget.happySelected = true;
    }else if(widget.selectedMood == "2") {
      widget.neutralSelected = true;
    }else{
      widget.sadSelected = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("How are you feeling today?",
            style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 16,
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              //Happy Emoji
              InkWell(
                  onTap: (){
                    print("Happy emoji tapped");

                    setState(() {
                      widget.selectedMood = "1";
                      changeSelected();
                    });
                  },
                  child: moodEmojiBlock("https://cdn-icons-png.flaticon.com/128/742/742751.png",widget.happySelected,)
              ),

              //Neutral Emoji
              InkWell(
                  onTap: () {
                    print("neutral emoji tapped");
                    setState(() {
                      widget.selectedMood = "2";
                      changeSelected();
                    });
                  },
                  child: moodEmojiBlock("https://cdn-icons-png.flaticon.com/128/742/742774.png",widget.neutralSelected),
              ),

              //Sad emoji
              InkWell(
                  onTap: (){
                    print("Sad emoji tapped");
                    setState(() {
                      widget.selectedMood = "3";
                      changeSelected();
                    });
                  },
                  child: moodEmojiBlock("https://cdn-icons-png.flaticon.com/128/742/742752.png",widget.sadSelected)),
            ],
          )
        ],
      ),
    );
  }
}
