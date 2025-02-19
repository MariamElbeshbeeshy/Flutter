import 'dart:io';

void main(List<String> arguments) {
  int n = int.parse(stdin.readLineSync()!);
  String s = stdin.readLineSync()!;
  int k = int.parse(stdin.readLineSync()!);
  k = k % 26;
  print(decrypt(n, k, s));
}

String decrypt(int n, int k, String s) {
  List<int> asciValues = s.codeUnits;
  List<int> modifiable = asciValues.toList();
  for (int i = 0; i < n; i++) {
    if (modifiable[i] >= 65 && modifiable[i] <= 90) {
      modifiable[i] += k;
      if (modifiable[i] > 90) {
        modifiable[i] -= 26;
      }
    } else if (modifiable[i] >= 97 && modifiable[i] <= 122) {
      modifiable[i] += k;
      if (modifiable[i] > 122) {
        modifiable[i] -= 26;
      }
    }
  }
  String decrypted = String.fromCharCodes(modifiable);
  return decrypted;
}
