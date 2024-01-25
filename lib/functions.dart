
List<num> calculateSum({required List<num> numbers}) {
  return [numbers.reduce((a, b) => a + b)];
}

bool checkEven({required num number}) {
  return number % 2 == 0;
}

List<String> findUniqueElements({required List<String> strings}) {
  return strings.toSet().toList();
}

void sortNumbers({required List<num> numbers}) {
  numbers.sort();
}

num calculateFactorial({required num n}) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * calculateFactorial(n: n - 1);
  }
}

int countVowels({required String str}) {
  String vowels = 'aeiouAEIOU';
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    if (vowels.contains(str[i])) {
      count++;
    }
  }
  return count;
}
