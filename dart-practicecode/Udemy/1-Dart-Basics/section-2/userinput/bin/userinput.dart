import 'dart:io';
import 'dart:async';

void main(List<String> arguments) {

  stdout.write("What is your name?\r\n");
  var name = stdin.readLineSync();
  stdout.write("Hello ${name}");
}

