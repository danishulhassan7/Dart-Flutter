import 'dart:io';
import 'dart:async';

void main(List<String> arguments) {

  stdout.write("What is your name? \r\n");
  String name = stdin.readLineSync();
  stdout.write("Hello ${name}");
}
