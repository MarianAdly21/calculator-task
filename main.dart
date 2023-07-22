import 'dart:io';

void main() {
  Calculator obj = Calculator();
  while (true) {
    try {
      print('enter operation you need if you exit the program enter q:');
      String operation = stdin.readLineSync()!;
      if (operation == 'q') {
        break;
      }
      print('enter the first number :');
      double num1 = double.parse(stdin.readLineSync()!);

      print('enter the scrnod number :');
      double num2 = double.parse(stdin.readLineSync()!);

      switch (operation) {
        case '+':
          print('Result: ${obj.add(num1, num2)}');
          break;
        case '-':
          print(' Result: ${obj.sub(num1, num2)}');
          break;
        case '*':
          print(' Result: ${obj.mult(num1, num2)}');
          break;

        case '/':
          print('Result: ${obj.divide(num1, num2)}');
          break;
        default:
          print('Operation Not valid');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class Calculator {
  double add(double num1, double num2) {
    return num1 + num2;
  }

  double sub(double num1, double num2) {
    return num1 - num2;
  }

  double mult(double num1, double num2) {
    return num1 * num2;
  }

  double divide(double num1, double num2) {
    return num1 / num2;
  }
}
