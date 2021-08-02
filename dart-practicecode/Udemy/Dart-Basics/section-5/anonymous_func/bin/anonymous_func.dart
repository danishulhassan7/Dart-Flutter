

void main(List<String> arguments) {
  var mixed = ["Danish", "Xpf", "riz"];

  mixed.forEach((print));
  print("-------------------");

  mixed.forEach((i){
    print(i);
  });

  print("-------------------");

 mixed.where((String values){
  switch(values) {
    case "Danish":
      return false;
    case "Xpf":
      return true;
    case "riz":
      return true;
    default:
      return false;
  }
 }).forEach(print);
}
