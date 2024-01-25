import 'package:test/test.dart';

void main() {
  test('Сума пустого списку дорівнює 0', () {
    expect(sum([]), equals(0));
  });

  test('Сума списку з одним елементом дорівнює цьому елементу', () {
    expect(sum([1]), equals(1));
  });

  test('Сума списку з декількома елементами дорівнює сумі цих елементів', () {
    expect(sum([1, 2, 3]), equals(6));
  });

  test('Парне число є парним', () {
    expect(isEven(2), isTrue);
  });

  test('Непарне число є непарним', () {
    expect(isEven(1), isFalse);
  });

  test('Факторіал 0 дорівнює 1', () {
    expect(factorial(0), equals(1));
  });

  test('Факторіал 1 дорівнює 1', () {
    expect(factorial(1), equals(1));
  });

  test('Факторіал 2 дорівнює 2', () {
    expect(factorial(2), equals(2));
  });

  test('Факторіал 5 дорівнює 120', () {
    expect(factorial(5), equals(120));
  });

  test('Рядок без голосних має довжину 0', () {
    expect(countVowels(''), equals(0));
  });

  test('Рядок з однією голосною має довжину 1', () {
    expect(countVowels('a'), equals(1));
  });

  test('Рядок з декількома голосними має довжину, що дорівнює кількості голосних', () {
    expect(countVowels('aeiou'), equals(5));
  });

  test('Рядок з голосними в різних регістрах має правильну кількість голосних', () {
    expect(countVowels('aeiOU'), equals(5));
  });

  test('Рядок з голосними та іншими символами має правильну кількість голосних', () {
    expect(countVowels('aeiou123'), equals(5));
  });
}

int sum(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}

bool isEven(int number) {
  return number % 2 == 0;
}

int factorial(int number) {
  if (number == 0) {
    return 1;
  } else {
    return number * factorial(number - 1);
  }
}

int countVowels(String string) {
  int count = 0;
  for (int i = 0; i < string.length; i++) {
    if (isVowel(string[i])) {
      count++;
    }
  }
  return count;
}

bool isVowel(String character) {
  return character == 'a' ||
      character == 'e' ||
      character == 'i' ||
      character == 'o' ||
      character == 'u';
}