import 'package:intl/intl.dart';

String formatDate(DateTime datetime, {String delimiter = '-'}) {
  DateFormat outputFormat = DateFormat('yyyy${delimiter}MM${delimiter}dd');
  String date = outputFormat.format(datetime);
  return date;
}

String formatDateTime(DateTime datetime) {
  DateFormat outputFormat = DateFormat('hh:mm');
  String date = outputFormat.format(datetime);
  return date;
}
