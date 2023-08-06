import 'package:arabic_roman_conv/src/utils/ar_en_mapping.dart';
import 'package:arabic_roman_conv/src/utils/speical_combinations.dart';
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
  String romanized(String arabicText) {
    // Check if the entire word/phrase is in the namesDb map
    if (arToEnMapping.containsKey(arabicText)) {
      return arToEnMapping[arabicText]!;
    }

    final romanizedText = StringBuffer();

    for (var i = 0; i < arabicText.length; i++) {
      final char = arabicText[i];

      // Handle special combinations
      if (i < arabicText.length - 1 &&
          specialCombinations.containsKey(char + arabicText[i + 1])) {
        romanizedText.write(specialCombinations[char + arabicText[i + 1]]);
        i++; // Skip the next character since we've already processed it
        continue;
      }
      // Handle positional changes
      romanizedText.write(_getRomanizedChar(char, i, arabicText));
    }

    return _stringify.capitalizeFirstLetter(romanizedText.toString());
  }

  String _getRomanizedChar(String char, int index, String text) {
    if (index == 0 && beginningChanges.containsKey(char)) {
      return beginningChanges[char]!;
    } else if (index == text.length - 1 && endingChanges.containsKey(char)) {
      return endingChanges[char]!;
    } else if (index > 0 &&
        index < text.length - 1 &&
        middleChanges.containsKey(char)) {
      return middleChanges[char]!;
    } else {
      return arToEnMapping[char] ?? char;
    }
  }
}
