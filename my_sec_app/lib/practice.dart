import 'dart:io';

// void main()
// {
//     print("print your full name :: ");
//
//     stdout.write("enter your first name :: ");
//     var fname = stdin.readLineSync();
//
//     stdout.write("enter your last name :: ");
//     var sname = stdin.readLineSync();
//
//     print("your name is :: $fname $sname");
//
//     // declaration of a variable
//     int a;
//     a = 10;
//     print("the value of an a is :: $a");
//
//     String name = "kavit baba";
//
//     print("name :: $name");
//
//
//     var student = new Person();
//
// }
//
// class Person
// {
//
// }

// --> normal function

// void main()
// {
//   Person student = Person();
//   student.name("kavit"); // method calling
//
//   student.name("arpan");
//
//   student.name("sujal");
// }
// class Person
// {
//     void name(String? name) { // method
//       print("welcome, $name"); // method defination
//     }
// }

void main()
{
  Person student = Person();
  var totalMark = student.markAddition(10, 20);
  print("total mark :: $totalMark");
}
class Person
{
  int markAddition(int sub1, int sub2) {
    return sub1 + sub2;
  }
}


