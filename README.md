[<img src="https://techdirr.com/techdirr.png" width="200" />](https://techdirr.com)


# date_time_pro

Pick Date or Time functions, Date or Time convert functions.

## Using

For help getting started with Flutter, view our
[online documentation](https://pub.dev/documentation/date_time_pro/latest), which offers tutorials,
samples, guidance on mobile and web development, and a full API reference.

## Installation

First, add `date_time_pro` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

In your flutter project add the dependency:

```yml
dependencies:
  ...
  date_time_pro:
```

For help getting started with Flutter, view the online
[documentation](https://flutter.io/).

## Example

Please follow this [example](https://github.com/techdirrdev/date_time_pro/tree/master/example) here.


### Date Picker and Time Picker

1. Use DateTimes.datePicker or DateTimes.timePicker function

* Date Picker
```dart
DateTimes.datePicker(
  context: context,
  date: "1997-04-26",
  onSelected: (date) {
    log(date);
});
```

* Time Picker
```dart
DateTimes.timePicker(
  context: context,
  time: "12:12:00",
  onSelected: (time) {
    log(time);
});
```

