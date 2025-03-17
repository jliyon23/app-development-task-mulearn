import 'dart:io';

void main() {
  print("Welcome to Sum it Up!");

  stdout.write("Enter the first number: ");
  double num1 = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

  stdout.write("Enter the second number: ");
  double num2 = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

  double sum = num1 + num2;

  //interpolation
  print("\nThe sum of $num1 and $num2 is $sum");

  //concatenation
  print("The sum of " + num1.toString() + " and " + num2.toString() + " is " + sum.toString());
}
