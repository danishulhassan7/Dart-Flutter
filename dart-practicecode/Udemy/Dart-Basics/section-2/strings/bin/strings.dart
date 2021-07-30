void main(List<String> arguments) {
  String hello = "Hello World xpf";
  print(hello);

  String name = "Malik Danish";
  print("Hello ${name}");

  //using substring method
  String firstname = name.substring(0,5);
  print("First name : ${firstname}");

  //getting index and using substring

  int index = name.indexOf(' ');
  String lastname = name.substring(index).trim();
  print("Last name: ${lastname}");

  // fullname using concatenation
  print("Your name is ${firstname} ${lastname}"); //string interpolation
  print("Your name is " + firstname + " "  + lastname); //concatenation

  // using built-in functions

  print(name.length);

  print(name.contains("anis"));
  print(name.contains("ans"));

  List parts = name.split(' ');
  print(parts);
  print(parts[0]);
  print(parts[1]);
}

