

void main(List<String> arguments) {

  //this code will not execute

  try{
    int age;
    int dogyears = 7;

    print(age * dogyears);
  }
  on NoSuchMethodError {
    print("Sorry, that is not going to happen");
  }
  catch(e) {
    print("There was an Error: ${e.toString()}");
  }
  finally{
    print("Completed");
  }

}
