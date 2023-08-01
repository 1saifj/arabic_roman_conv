# Arabic Roman Conv (WIP)

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: MIT][license_badge]][license_link]

a flexible, easy-to-use Flutter package that provides tools for the conversion of Arabic names and phrases to their Romanized (English) counterparts.

## Installation 💻

**❗ In order to start using Arabic Roman Conv you must have the [Flutter SDK][flutter_install_link] installed on your machine.**

Add `arabic_roman_conv` to your `pubspec.yaml`:

```yaml
dependencies:
  arabic_roman_conv: 0.1.0-dev.2
```

Install it:

```sh
flutter pub get
```

# Usage 📖

## Importing the package

```dart
import 'package:arabic_roman_conv/arabic_roman_conv.dart';
```

## Converting a word

```dart
final word = 'سيف';
final romanizedWord = ArabicRomanConv.romanized(word);

print(romanizedWord); // Saif
```

## Converting a sentence

```dart
final sentence = 'سيف الدين';
final romanizedSentence = ArabicRomanConv.romanized(sentence);

print(romanizedSentence); // Saif Aldeen
```

# Motivation 🤔

I wanted to create a package that provides tools for the conversion of Arabic names and phrases to their Romanized (English) counterparts. I also wanted to make sure that the package is flexible and easy to use.

This package inspired by [arabic-names-to-en](https://github.com/hamdongunner/arabic-names-to-en).

# Roadmap 🗺

- [x] convert a word to exact romanization (e.g. "سيف" -> "Saif")
- [x] convert a sentencte to exact romanization (e.g. "سيف الدين" -> "Saif Aldeen")

# Contributing 🤝

Contributions are welcome! Please feel free to submit a Pull Request.

# Features and bugs 🐛

Please file feature requests and bugs at the [issue tracker][tracker].

# FAQ ❓

## Why is the package name `arabic_roman_conv` and not a different name?

I wanted to keep the package name short and simple. I also wanted to avoid using the word "romanization" because it's not a very common word and it might be hard for some people to understand what the package does just by looking at its name.

---
