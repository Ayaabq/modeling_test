// the advantage of this class is to make time instance
// without making date time because date time need year, month..
// and i just need hour and minute
class Time {
  final int hours;
  final int minutes;


  Time(this.hours, this.minutes) {
    if (hours < 0 || hours > 23) {
      throw ArgumentError('Hours must be between 0 and 23.');
    }
    if (minutes < 0 || minutes > 59) {
      throw ArgumentError('Minutes must be between 0 and 59.');
    }
  }
  factory Time.fromString(String time) {
    var hours = int.parse(time.substring(0, 1));
    var min = int.parse(time.substring(3, 4));
    return Time(hours, min);
  }
  @override
  String toString() {
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
  }
}
