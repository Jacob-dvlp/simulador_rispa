import 'package:intl/intl.dart';

class MethodUtil {
  var inputFormat, inputDate, outputFormat;

  String getFormatedDate(_date) {
    inputFormat = DateFormat('dd.MM.yyyy');
    inputDate = inputFormat.parse(_date);
    outputFormat = DateFormat(DateFormat.YEAR_MONTH_DAY, 'pt_Br');
    return outputFormat.format(inputDate);
  }
}
