import 'package:flutter/material.dart';

class timeDate extends StatefulWidget {
  const timeDate({super.key});

  @override
  State<timeDate> createState() => _timeDateState();
}

class _timeDateState extends State<timeDate> {
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime _dateTime = DateTime.now();

  // show date picker method
  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2025))
        .then((value) => setState(() {
              _dateTime = value!;
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Text("${selectedTime.hour}:${selectedTime.minute}"),
                ),
                SizedBox(
                  width: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(_dateTime.toString()),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: ElevatedButton(
                      onPressed: () async {
                        final TimeOfDay? timeOfDay = await showTimePicker(
                            context: context,
                            initialTime: selectedTime,
                            initialEntryMode: TimePickerEntryMode.dial);
                        if (timeOfDay != null) {
                          setState(() {
                            selectedTime = timeOfDay;
                          });
                        }
                      },
                      child: Text("chose Time")),
                ),

                // date picker
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                    onPressed: _showDatePicker, child: Text("chose Date"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
