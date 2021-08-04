

void main(List<String> arguments) {
  hello1("");
  hello2("Danish");
  downloads("hello.txt");
  downloads("index.html", true);
}

void hello1([String name = " "]) {
  print("Func-1: Hello ${name}");
}

void hello2([String name = " "]) {
  if(name.isNotEmpty) {
    name = name.padLeft(name.length - 1);
  }
  print("Func-2: Hello ${name}");
}

// Another example of optional parameter

void downloads(String file, [bool open = false]) {
  print("Filename : ${file}");
  if(open) {
    print("Opening file : ${file}");
  }
}