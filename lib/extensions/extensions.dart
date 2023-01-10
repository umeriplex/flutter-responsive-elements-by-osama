import 'package:intl/intl.dart';
//TODO extension to make string first letter uppercase
extension MakeFirstLetterUpperCase on String {
  String toFirstLetterUpperCase() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

//TODO extension to set date and time format
extension SetDateTimeFormat on DateTime{
  String customDate(){
    return DateFormat.yMMMMEEEEd().format(this);
  }
}
