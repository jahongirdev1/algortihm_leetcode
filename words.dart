class CustomException implements Exception {
  final String message;
  CustomException(this.message);

  @override
  String toString() => message;
}

class Words {
  String _word;
  Words.word(this._word);
  factory Words(String word) {
    if (word.isEmpty || !RegExp(r'[aeiouAEIOU]').hasMatch(word)) {
      throw CustomException('Invalid word');
    }
    return Words.word(word);
  }

  String get word => _word;

  @override
  String toString() => 'Word: $_word';

  Words copyWith(String word) => Words(word);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Words &&
          runtimeType == other.runtimeType &&
          _word == other._word;

  @override
  int get hashCode => _word.hashCode;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

  String reverseVowels() {
    List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
    List<String> wordList = _word.split('');
    for (int i = 0, j = wordList.length - 1; i < j; i++, j--) {
      while (i < j && !vowels.contains(wordList[i])) {
        i++;
      }
      while (i < j && !vowels.contains(wordList[j])) {
        j--;
      }
      String temp = wordList[i];
      wordList[i] = wordList[j];
      wordList[j] = temp;
    }
    return wordList.join('');
  }
}
