import 'dart:io';

void main(List<String> arguments) {
  String? text = stdin.readLineSync()!;
  print(ReverseText(text));
}

String ReverseText(String OriginalText) {
  List<String> words;
  words = OriginalText.split(" ");
  String reversedText='';
  for (int i = words.length - 1; i >= 0; i--) {
    reversedText += words[i] + " ";
  }
  return reversedText;
}
