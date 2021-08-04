

void main(List<String> arguments) {
  int age = 102;

  if(age == 23) print("You are 23 years old");
  if(age != 23) print("You are not 23 years old");

  if(age < 18) {
    print("You are a minor");
    if(age < 13) print("You are not even a teenager");
  }

  if(age > 60){
    print("You are a senior citizen");
    if(age > 101) print("You are lucky to alive yet!");
  }

  int age2 = 26;

  if(age2 == 21) {
    print("This is your special year");
  } else {
    print("This is just a normal year");
  }

}
