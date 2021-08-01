

void main(List<String> arguments) {

  int value = 6;
  int max = 5;


  do{
    print(value);
    value++;
  } while(value <= max);
  print("End of do while loop");


  int value2 = 1;
  while(value2 <= max) {
    print(value2);
    value2++;
  }
  print("End of while loop");


// continue and break
  print("Infinite loop with break and continue keywords");
  int a = 1;
  while(true) {
    print(a);
    a++;

    if(a == 5) {
      print("Value is ${a}");
      continue;
      }
    if(a > 10) {
      print("Value is greater than 10");
      break;
    }
      }
      }
