
//main entry point
void main(List<String> arguments) {
  bool isOn = true; // variable that something changes it is a opposite of constant
  print("isOn = ${isOn}");

  isOn = false;
  print("isOn = ${isOn}");

  var onOff = true;
  print("onOff= ${onOff}");

  //using builtin function to check the type

  print("isOn is a : ${isOn.runtimeType}");
  print("onOff is a : ${onOff.runtimeType}");
}
