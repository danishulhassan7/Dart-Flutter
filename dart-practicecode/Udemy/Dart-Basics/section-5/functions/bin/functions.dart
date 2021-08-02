

void main(List<String> arguments) {
  test();
  hello("XPF");
  print("Your age in dogyears is ${dogAge(23)}");

  //Paint Calc
  int wall1 = squareFeet(8, 12);
  int wall2 = squareFeet(8, 10);
  int wall3 = squareFeet(8, 12);
  int wall4 = squareFeet(8, 10);
  int ceiling = squareFeet(8, 12);

  double paint = paintNeeded(wall1, wall2, wall3, wall4, ceiling);
  print("The paint we need for the room is ${paint} gallons.");

}

void test() {
  print("Hello World from function");
}

void hello(String name) {
  print("Hello, ${name}");
}

int dogAge(int age) {
   return age * 7;
}

//Paint Calc. Functions
int squareFeet(int width, int length) {
  return width * length;
}

double paintNeeded(int wall1, int wall2, int wall3, int wall4, int ceiling) {
  int totalFoots = wall1 + wall2  + wall3 + wall4 + ceiling;
  return totalFoots / 40;
}
