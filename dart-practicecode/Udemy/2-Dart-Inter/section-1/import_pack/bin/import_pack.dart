import 'package:http/http.dart' as http;

void main(List<String> arguments) {

  //Getting the code of homepage of a site using http package

  var url = "https://danishulhassan7portfolio.web.app/";

  
  http.get(Uri.parse(url)).then((response){
    print("Response Status Code: ${response.statusCode}"); //200 means ok // 404 page not found
    print("Response Status Body: ${response.body}"); //Getting the source of the given url
  });
  
}
