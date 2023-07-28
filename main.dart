import 'words.dart';

void main() {
  try {
    Words word = Words('hello');
    print(word.reverseVowels());
  } catch (e) {
    print(e);
  }
}
