import 'dart:math';

Map getCalendarData(days){
  print(days);
  List moods = ["pos", "neg", "neut"];
  var calendarData = {};
  for(int i = 1;i<=days;i++){
    var rng = Random();
    // print(1+rng.nextInt(3));
    // print("Day:");
    // print(i);
    // print(moods[rng.nextInt(3)]);
    // calendarData.add([i,moods[rng.nextInt(3)]]);
    calendarData[i] = moods[rng.nextInt(3)];

  }
  return calendarData;
}