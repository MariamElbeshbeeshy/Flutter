import "dart:io";

void main(List<String> arguments) {
  print("please enter a number:");
  String num = stdin.readLineSync()!;
  print(isPalindrome(num));
}

bool isPalindrome(String num) {
  int len = num.length;
  for (int i = 0; i <= (len ~/ 2); i++) {
    if (num[i] != num[len - i - 1]) {
      return false;
    }
  }
  return true;
}
