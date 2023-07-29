import 'package:arabic_roman_conv/src/utils/ar_en_mapping.dart';

/// a flexible, easy-to-use Flutter package
/// that provides tools for the conversion of Arabic names
/// and phrases to their Romanized (English) counterparts.
class ArabicRomanConv {
  /// {@macro arabic_roman_conv}
  const ArabicRomanConv();

  ///toRoman Converts Arabic text to Romanized text.
  /// Based on
  String toRoman(String arabicText) {
    var romanizedText = '';
    for (final char in arToEnMapping.entries) {
      if (arabicText == char.key) {
        romanizedText = char.value;
      }
    }
    return romanizedText;
  }
}
