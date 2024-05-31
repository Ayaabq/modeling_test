import 'package:intl/intl.dart';

mixin DateTimeMixin{

    static  dateTimeFromString(String dateString) {
       return  DateTime.parse(dateString).toLocal();

    }
   stringFromDateTime(DateTime dateTime){
    return  DateFormat("yyyy-MM-ddTHH:mm:ss'Z'").format(dateTime.toUtc());

  }
// value.toUtc().toIso8601String();

}