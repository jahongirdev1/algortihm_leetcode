import 'words.dart';

void main() {
  try {
    Words word1 = Words('hello');
    print(word1.reverseVowels());

    Words word2 = Words('leetcode');
    print(word2.reverseVowels());
  } catch (e) {
    print(e);
  }
}
