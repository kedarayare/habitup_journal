import 'package:flutter/material.dart';

class moodEmojiBlock extends StatefulWidget {

  var seleted;
  var emojiLink;

  var selectedColor;
  moodEmojiBlock(this.emojiLink, this.seleted){
    if(this.seleted == true){
      selectedColor = 0xff007EA7;
    }
    else{
      selectedColor = 0xff003459;
    }
  }

  @override
  _moodEmojiBlockState createState() => _moodEmojiBlockState();
}

class _moodEmojiBlockState extends State<moodEmojiBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(widget.selectedColor),
        ),
        child: SizedBox(
          child: CircleAvatar(
            backgroundImage: NetworkImage(widget.emojiLink),
            radius: 32,
          )
        ),
      );
  }
}
