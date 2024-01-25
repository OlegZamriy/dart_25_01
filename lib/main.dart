import 'dart:io';
import 'functions.dart';

void main() {
  print("Виберіть функцію:");
  print("1. Сума чисел");
  print("2. Парність числа");
  print("3. Унікальні елементи");
  print("4. Сортування чисел");
  print("5. Факторіал числа");
  print("6. Кількість голосних");

  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      {
        List<num> numbers = [];
        for (int i = 0; i < 3; i++) {
          numbers.add(num.parse(stdin.readLineSync()!));
        }

        List<num> sumResult = calculateSum(numbers: numbers);
        print("Сума чисел: ${sumResult[0]}");
      }
      break;
    case 2:
      {
        num number = num.parse(stdin.readLineSync()!);
        bool isEvenResult = checkEven(number: number);
        print("Число $number є парним: $isEvenResult");
      }
      break;
    case 3:
      {
        List<String> strings = [];
        for (int i = 0; i < 3; i++) {
          strings.add(stdin.readLineSync()!);
        }

        List<String> uniqueStrings = findUniqueElements(strings: strings);
        print("Унікальні елементи: $uniqueStrings");
      }
      break;
    case 4:
      {
        List<num> numbers = [];
        for (int i = 0; i < 3; i++) {
          numbers.add(num.parse(stdin.readLineSync()!));
        }

        sortNumbers(numbers: numbers);
        print("Сортований список чисел: $numbers");
      }
      break;
    case 5:
      {
        num n = num.parse(stdin.readLineSync()!);
        num factorialResult = calculateFactorial(n: n);
        print("Факторіал числа $n: $factorialResult");
      }
      break;
    case 6:
      {
        String str = stdin.readLineSync()!;
        int count = countVowels(str: str);
        print("Кількість голосних у рядку $str: $count");
      }
      break;
    default:
      print("Невірний вибір");
      break;
  }
}
