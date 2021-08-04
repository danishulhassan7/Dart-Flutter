import 'dart:collection';

void main() {

  // Queue: Ordered, no index, add and remove from the start and end
  Queue<String> numbers = new Queue<String>();

  numbers.add("A");
  numbers.add("B");
  numbers.add("C");
  numbers.add("D");
  numbers.add("E");
  print(numbers);

 
  numbers.removeFirst();
  numbers.removeLast();
  print(numbers);

}