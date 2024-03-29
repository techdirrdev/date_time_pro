import 'dart:developer';
import 'package:date_time_pro/date_times.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: DateTimePicker());
  }
}

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({Key? key}) : super(key: key);

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  String _selectedDate = DateTimes.getCurrentDateTime();
  String _selectedTime = DateTimes.getCurrentTime();
  final TextEditingController _conDate = TextEditingController();
  final TextEditingController _conTime = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date & Time Picker Example"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: _conDate
                  ..text = DateTimes.reverseDate(date: _selectedDate),
                readOnly: true,
                decoration: const InputDecoration(
                    labelText: "Date", hintText: "Select Date"),
                onTap: () {
                  DateTimes.datePicker(
                      context: context,
                      date: _selectedDate,
                      onSelected: (date) {
                        log(date);
                        setState(() {
                          _selectedDate = date;
                        });
                      });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _conTime
                  ..text = DateTimes.periodTime(time: _selectedTime),
                readOnly: true,
                decoration: const InputDecoration(
                    labelText: "Time", hintText: "Select Time"),
                onTap: () {
                  DateTimes.timePicker(
                      context: context,
                      time: _selectedTime,
                      onSelected: (time) {
                        log(time);
                        setState(() {
                          _selectedTime = time;
                        });
                      });
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
