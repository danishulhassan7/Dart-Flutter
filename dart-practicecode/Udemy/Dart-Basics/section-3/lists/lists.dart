void main() {

  //Lists

List values  = [1,2,3,4,5,6];

print("List Values: ${values}");
print("Length of List is : ${values.length}");
print("First Value is : ${values[0]}");
print("Last Value is : ${values[2]}");


// We can check what the value is at particular index
print(values.elementAt(5));
//print(values.elementAt(5656)); // Error


// List of mixed data types

List things = [56,"animals", false, "3.65", 98.65];

print("List of Mixed data type : ${things}");

//Generic type of list

List<int> onlyInt = [1,6,45,78,4];

print("List of integers: ${onlyInt}");

}