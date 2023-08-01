import 'package:arabic_roman_conv/src/utils/ar_en_mapping.dart';
import 'package:arabic_roman_conv/src/utils/stringify.dart';

/// a flexible, easy-to-use Flutter package
/// that provides tools for the conversion of Arabic names
/// and phrases to their Romanized (English) counterparts.
class ArabicRomanConv {
  /// {@macro arabic_roman_conv}
  ArabicRomanConv();

  final Stringify _stringify = Stringify();

  ///toRoman Converts Arabic text to Romanized text.
  /// Based on the keys in the [arToEnMapping] map,
  /// if the word is found in the map, it is replaced with its value.
  /// 
  String toRoman(String arabicText) {
    var romanizedText = '';
    arabicText.split(' ').forEach((word) {
      if (arToEnMapping.containsKey(word)) {
        romanizedText +=
            '${_stringify.capitalizeFirstLetter(arToEnMapping[word]!)} ';
      } else {
        word.split('').forEach((char) {
          romanizedText +=
              arToEnMapping.containsKey(char) ? arToEnMapping[char]! : char;
        });
        romanizedText += ' ';
      }
    });
    return romanizedText.trim();
  }
}
