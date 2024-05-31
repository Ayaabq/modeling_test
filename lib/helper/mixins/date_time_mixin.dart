import 'package:intl/intl.dart';

mixin DateTimeMixin<T>{


   stringFromDateTime(DateTime dateTime){
    return  DateFormat("yyyy-MM-ddTHH:mm:ss'Z'").format(dateTime.toUtc());

  }

   String formattedDate(DateTime dateTime) {
     DateFormat formatter = DateFormat('d-MMM, yyyy');
     return formatter.format(dateTime);
   }

}