import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

/*

firstdate : esrliest date 
lastdate : maximum possible date that user can select 
initial Date : which is display when date picker appear
*/
class Date_Picker extends StatefulWidget {
  const Date_Picker({super.key});

  @override
  State<Date_Picker> createState() => _Date_PickerState();
}

class _Date_PickerState extends State<Date_Picker> {
  DateTime date_value = DateTime.now(); // to get current Date
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Date Picker")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _selectedDate(context);
              },
              child: Text("Click Here"),
            ),
            Text(
              "${date_value.day}/ ${date_value.month}/${date_value.year}",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  _selectedDate(BuildContext context) async {
    DateTime? Selecteddate = await showDatePicker(
        context: context,
        initialDate: date_value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
        helpText: "Select Date",
        confirmText: "Ok",
        cancelText: "Cancel",
        initialDatePickerMode: DatePickerMode.year);
    if (Selecteddate != null && Selecteddate != date_value) {
      setState(() {
        date_value = Selecteddate;
      });
    }
  }
}
