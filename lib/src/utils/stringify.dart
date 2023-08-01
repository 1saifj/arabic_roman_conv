///Class provides utilites for string manipulation
class Stringify {
  ///Constructor for Stringify
  Stringify();

  ///capitalizeFirstLetter
  ///Converts the first letter of a string to uppercase
  ///and returns the string
  ///Example:
  ///```dart
  ///Stringify.capitalizeFirstLetter('hello world');
  /////returns 'Hello world'
  ///```
  String capitalizeFirstLetter(String string) {
    return string[0].toUpperCase() + string.substring(1);
  }
}
