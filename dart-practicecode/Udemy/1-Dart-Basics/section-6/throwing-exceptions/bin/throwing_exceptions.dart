

void main(List<String> arguments) {
  try{
    int age = 0;
    int dogyears = 7;

    if(dogyears != 7) throw new Exception("Dogyears must be 7 years.");
    if(age == 0) throw new NullThrownError();
    print(age * dogyears);
  }
  on NullThrownError {
    print("The age value is null");
  }
  on NoSuchMethodError {
    print("Sorry, no such method");
  }
   catch(e) {
    print("Unknown Error: ${e.toString()}");
   }
   finally {
    print("Complete!!");
   }
}
