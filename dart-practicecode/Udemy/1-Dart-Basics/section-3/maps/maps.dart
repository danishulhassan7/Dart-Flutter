
main(List<String> arguments) {
  Map players = {
    "Dad": "Baber",
    "Son": "Virat",
    "Daughter": "Harmanpreet"
  };

  print(players);
  print("Keys are : ${players.keys}");
  print("Values are ${players.values}");
  print("Dad is ${players["Dad"]}");
  print("Daughter is ${players["Daughter"]}");
  print("Son is ${players["Son"]}");

  // Another way of using maps 

  Map<String, String>  bowlers = new Map<String, String>();

  bowlers.putIfAbsent("Higher", () => "Amir");
  bowlers.putIfAbsent("Lower", () => "Shaheen");

    print("Dad is ${bowlers["Higher"]}");
    print("Son is ${bowlers["Lower"]}");
  
}