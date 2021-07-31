
import 'dart:io';
import 'dart:async';

void main(List<String> arguments) {

  var players = ["Baber", "Kohli", "Root", "Smith", "Kane"];
  print("Players: ${players}");
  stdout.write("What is the index of your favourite player? \r\n");
  String playerName = int.parse(stdin.readLineSync());
  print(players.elementAt(playerName));
}
