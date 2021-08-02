import 'dart:io';
import 'dart:async';

void main(List<String> arguments) {
  stdout.write("Enter a number\r\n");
  var val = stdin.readLineSync();
  print("You entered ${val}");
}



