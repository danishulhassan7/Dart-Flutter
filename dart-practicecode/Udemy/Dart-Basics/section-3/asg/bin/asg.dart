
import 'dart:io';
import 'dart:async';

void main(List<String> arguments) {

  List<String> players = ["Baber", "Kohli", "Root", "Smith", "Kane"];
  print("Players: ${players}");
  stdout.write("What is the index of your favourite player? \r\n");
  var playerName = stdin.readLineSync();
  print("Your favourite player name is : ${players.elementAt(playerName)}");


}
