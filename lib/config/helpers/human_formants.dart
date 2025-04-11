import 'package:intl/intl.dart';

class HumanFormants {
  static String number(double number){
    final formatterNuimber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      locale: 'en',
      symbol: ''
    ).format(number);
    return formatterNuimber;
  }
}