// ignore_for_file: prefer_const_constructors

import 'package:arabic_roman_conv/arabic_roman_conv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ArabicRomanConv', () {
    final conv = ArabicRomanConv();

    test(
        'romanized returns correct Romanized string for individual Arabic characters',
        () {
      expect(conv.romanized('أ'), equals('Aa'));
      expect(conv.romanized('ب'), equals('B'));
      // ... add more tests for individual characters
    });

    test('romanized returns correct Romanized string for Arabic words', () {
      expect(conv.romanized('زينب'), equals('Zainab'));
      expect(conv.romanized('احمد'), equals('Ahmad'));
      // ... add more tests for words
    });

    test('romanized returns correct Romanized string for special combinations',
        () {
      expect(conv.romanized('خا'), equals('Khaa'));
      expect(conv.romanized('غي'), equals('Ghee'));
      // ... add more tests for special combinations
    });

    test('romanized returns correct Romanized string for positional changes',
        () {
      expect(conv.romanized('أب'), equals('Aab'));
      expect(conv.romanized('بأ'), equals('Ba'));
      // ... add more tests for positional changes
    });
  });
}
