import 'package:imports/imports.dart' as mycode;

// using built-in library of dart

import 'dart:convert';

void main(List<String> arguments) {
  mycode.helloWorld();

  // Encode and Decode
  // This concept is mainly we see in the emails and URL of websites, this is done for security purposes

  // Encoding
  String msg = "Danish Ul Hassan";
  var ebytes = utf8.encode(msg);
  String encoded = base64.encode(ebytes);
  print("The Encoded msg: ${encoded}");

  //Decoding

  var dbytes = base64.decode(encoded);
  String decoded = utf8.decode(dbytes);
  print("The decoded msg: ${decoded}");


}
