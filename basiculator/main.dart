import 'dart:io';

void main() {
  while (true) {
    print("\n===============================");
    print("        BASICULATOR MENU       ");
    print("===============================");
    print("1. Addition (+)");
    print("2. Subtraction (-)");
    print("3. Multiplication (*)");
    print("4. Division (/)");
    print("5. Modulus (%)");
    print("6. Comparison (>, <, ==, !=)");
    print("7. Exit");
    print("===============================");

    stdout.write("Choose an option (1-7): ");
    String choice = stdin.readLineSync() ?? "";

    if (choice == "7") {
      print("Exiting Basiculator. Goodbye!");
      break;
    }

    if (!["1", "2", "3", "4", "5", "6"].contains(choice)) {
      print("Invalid choice! Please enter a number between 1-7.");
      continue;
    }

    double num1 = getNumber("Enter the first number: ");
    double num2 = getNumber("Enter the second number: ");

    switch (choice) {
      case "1":
        print("The sum of $num1 and $num2 is ${num1 + num2}");
        break;
      case "2":
        print("The difference of $num1 and $num2 is ${num1 - num2}");
        break;
      case "3":
        print("The product of $num1 and $num2 is ${num1 * num2}");
        break;
      case "4":
        if (num2 != 0) {
          print("The division of $num1 by $num2 is ${num1 / num2}");
        } else {
          print("Error: Division by zero is not allowed.");
        }
        break;
      case "5":
        if (num2 != 0) {
          print("The modulus of $num1 and $num2 is ${num1 % num2}");
        } else {
          print("Error: Modulus by zero is not allowed.");
        }
        break;
      case "6":
        print("Comparison results:");
        print("$num1 > $num2 : ${num1 > num2}");
        print("$num1 < $num2 : ${num1 < num2}");
        print("$num1 == $num2 : ${num1 == num2}");
        print("$num1 != $num2 : ${num1 != num2}");
        break;
    }
  }
}

double getNumber(String prompt) {
  while (true) {
    stdout.write(prompt);
    double? num = double.tryParse(stdin.readLineSync() ?? "");
    if (num != null) return num;
    print("Invalid input! Please enter a valid number.");
  }
}
