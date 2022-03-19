import 'package:age/age.dart';

class AgeCalculate {
  AgeDuration calculateAge(DateTime today, DateTime birthDate) {
    AgeDuration age;

    age = Age.dateDifference(
        fromDate: birthDate, toDate: today, includeToDate: false);

    return age;
  }

  AgeDuration? nextBirthday(DateTime today, DateTime birthDate) {
    DateTime temp = DateTime(today.year, birthDate.month, birthDate.day);

    DateTime nextBirthdayDate = temp.isBefore(today)
        ? Age.add(
            date: temp,
            duration: AgeDuration(years: 1),
          )
        : temp;

    AgeDuration nextBirthdayDuration =
        Age.dateDifference(fromDate: today, toDate: nextBirthdayDate);
    return nextBirthdayDuration;
  }
}
