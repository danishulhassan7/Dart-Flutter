

void main(List<String> arguments) {

  int foots = multiply(w :4,l: 6);
  print("Total footage is: ${foots}");
  downloads("index.js");
  downloads("iChrome",port: 124);
}

// named parameters

int multiply({int w = 0, int l = 0}) {
  return w * l;
}

void downloads(String file, {int port = 80}) {
  print("The file ${file} is downloading on port ${port}");
}


