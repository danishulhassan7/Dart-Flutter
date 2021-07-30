
void main(List<String> arguments) {
  //Numbers
  // 1: int
  // 2: double

  num value1 = 20;
  print(value1);

  num value2 = 50.67;
  print(value2);

  var value3 = 50.67;
  print(value3);

  int num1 = 40;
  print(num1);
  print("40 is a ${num1.runtimeType}");

  double num2 = 60;
  print(num2);

  // int num3 = 40.6;
  double num3 = 422.142;
  print(num3);
  print("422.142 is a ${num3.runtimeType}");

  // Parsing int

  print("Parsing an integer");
  int test = int.parse("12");
  print(test);
  print(test.runtimeType);

  // handling error

  print("Parsing an int using showing error (onError Function)");
  int err = int.parse("12.94", onError: (source) => 0);
  print(err);

  //Simple maths operations

  int age = 23;
  int dogyears = 7;
  int dogage = age * dogyears;
  print("Your age in dog years is : ${dogage} years old");
}
