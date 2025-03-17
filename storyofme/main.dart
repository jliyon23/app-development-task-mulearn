import 'dart:io';

void main() {
  print("Welcome to 'The Story of Me'!");

  stdout.write("Enter your Name: ");
  String name = stdin.readLineSync() ?? "";

  stdout.write("Enter your Phone Number: ");
  String phone = stdin.readLineSync() ?? "";

  stdout.write("Enter your Age: ");
  int age = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Enter your Height (in cm): ");
  double height = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

  stdout.write("Enter your Weight (in kg): ");
  double weight = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

  stdout.write("Enter your Address: ");
  String address = stdin.readLineSync() ?? "";

  stdout.write("Enter your Hobbies (comma-separated): ");
  List<String> hobbies = (stdin.readLineSync() ?? "").split(',').map((h) => h.trim()).toList();

  print("\n=====================");
  print("       BIODATA       ");
  print("=====================");
  print("Name      : $name");
  print("Phone     : $phone");
  print("Age       : $age years");
  print("Height    : $height cm");
  print("Weight    : $weight kg");
  print("Address   : $address");
  print("Hobbies   : ${hobbies.join(", ")}");
  print("=====================");
}
