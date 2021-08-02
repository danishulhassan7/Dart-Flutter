

void main(List<String> arguments) {

  var numbers = [1,2,3,4,5,6,7];
  numbers.forEach((int element) {
    print(element);
  });

  // for loop

  List<String> persons = ["Baber", "Virat", "Rizzu"];

  for(int val = 0; val < persons.length; val++) {
    print("Person at ${val} is : ${persons[val]}");
  }

}


