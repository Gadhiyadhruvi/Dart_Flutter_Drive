

import 'package:flutter/material.dart';
import 'package:project3/models/Mybudget.dart';
import 'package:project3/services/MyServices.dart';
class AddExpensePage extends StatefulWidget {
  const AddExpensePage({super.key});

  @override
  State<AddExpensePage> createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {
  var _monthController = TextEditingController();

  var _myservices = MyServices();
  List<MyBudget>_budgetList = <MyBudget>[];

  var mybudget_month = 0;

  _fetchBudgetByMonth(monthname)async{
    var result = await _myservices.fetchDataBudgetService(monthname);

    _budgetList = <MyBudget>[];

    print("------> result $result");
    result.forEach((Entry){
      setState(() {
        print("\n Entryy-----> $Entry");
        var _mybudget = MyBudget();
        _mybudget.id =Entry['id'];
        _mybudget.month =Entry['month'];
        _mybudget.amount =Entry['amount'];

        _budgetList.add(_mybudget);
        mybudget_month += _mybudget.amount!;
        print("------>budget list : $_budgetList");
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My expense ")),
      body: Container(
        height: 200,
        child: Column(
          children: [
            TextFormField(
              controller: _monthController,
              decoration: InputDecoration(hintText: "Enter Budget Title e.g. Jan-2022"),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                mybudget_month = 0;
              });
              var month = _monthController.text.toString();
              print("MONTH ENTERED BY USER $month");
              _fetchBudgetByMonth(month);
            }, child: Text("search")),
            Text("Rs. $mybudget_month",
            style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}