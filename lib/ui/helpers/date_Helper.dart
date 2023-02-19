import 'package:easy_localization/easy_localization.dart';

class DateHelper {
  static formatDate(int timeStamp) {
    var formatter = DateFormat('MM/dd/yyyy');
    return formatter.format(DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000));
  }
}
