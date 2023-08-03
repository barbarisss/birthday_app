import 'package:flutter/services.dart';

class DateTextInputFormatter extends TextInputFormatter {
  DateTextInputFormatter({
    required this.sample,
    required this.separator,
  });

  final String sample;
  final String separator;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isNotEmpty) {
      if (newValue.text.length > oldValue.text.length) {
        String newSymbol = newValue.text[newValue.text.length - 1];
        bool isNumber = checkSymbol(newSymbol);

        if (newValue.text.length > sample.length || !isNumber) return oldValue;
        if (newValue.text.length < sample.length &&
            sample[newValue.text.length - 1] == separator) {
          return TextEditingValue(
            text:
                '${oldValue.text}$separator${newValue.text.substring(newValue.text.length - 1)}',
            selection:
                TextSelection.collapsed(offset: newValue.selection.end + 1),
          );
        }
      }
    }
    return newValue;
  }

  bool checkSymbol(String str) {
    RegExp exp = RegExp(r'[0-9]');
    Iterable<Match> matches = exp.allMatches(str);

    if (matches.length < str.length) {
      return false;
    } else {
      return true;
    }
  }
}
