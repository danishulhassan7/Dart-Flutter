

void main(List<String> arguments) {
//This approach is not really recomended this is just for practice purposes.

  var dogyears = calc;
  var catyears = calc;

  print("Your age in dogyears is ${dogyears(23,7)} years old");
  print("Your age in catyears is ${catyears(23,12)} years old");


}

int calc(int age, int mul) {
  return age * mul;
}
