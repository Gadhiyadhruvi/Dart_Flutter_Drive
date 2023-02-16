import 'package:flutter/material.dart';
import 'package:budgettracker/models/Mybudget.dart';
import 'package:budgettracker/services/MyServices.dart';

class Budget_history extends StatefulWidget {
  const Budget_history({super.key});

  @override
  State<Budget_history> createState() => _Budget_historyState();
}

class _Budget_historyState extends State<Budget_history> {
  List<MyBudget> _budgetHistoryList = <MyBudget>[];

  var _myservices = MyServices();

  void initState() {
    getHistrybudget();
    super.initState();
  }

  getHistrybudget() async {
    var result = await _myservices.historyGetAllBudget();

    _budgetHistoryList = <MyBudget>[];
    print("-------$result");
    result.forEach((entry) {
      setState(() {
        var _mybudget = MyBudget();

        _mybudget.id = entry['id'];
        _mybudget.month = entry['month'];
        _mybudget.created_at = entry['created_at'];
        _mybudget.amount = entry['amount'];
        _budgetHistoryList.add(_mybudget);
      });
    });
  }

  _deleteBudgetEntry(BuildContext context, id) {
    return showDialog(
        context: context,
        builder: (param) {
          return AlertDialog(
            title: Text("Are You Sure You Want To Delete Yhis ??"),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        print(id);
                        var result =
                            await _myservices.deleteDataBudgetService(id);
                        print("entry deleted !!!");
                        getHistrybudget();
                        Navigator.pop(context);
                      },
                      child: Text("yes")),
                  ElevatedButton(
                      onPressed: () {
                        print("No button press");
                        Navigator.pop(context);
                      },
                      child: Text("no")),
                ],
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 97, 86),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 49, 97, 86),
        title: Text("Budget"),
      ),
      body: ListView.builder(
          itemCount: _budgetHistoryList.length,
          itemBuilder: ((context, index) {
            return Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color.fromARGB(255, 61, 92, 118)),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: ListTile(
                tileColor: Color.fromARGB(255, 64, 160, 137),
                onTap: () {},
                leading: Icon(
                  Icons.currency_rupee,
                  color: Color.fromARGB(255, 37, 83, 39),
                ),
                title: Text(
                  _budgetHistoryList[index].amount.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                subtitle: Text(
                  _budgetHistoryList[index].month ?? "",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                trailing: Text(
                  _budgetHistoryList[index].created_at.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onLongPress: () {
                  _deleteBudgetEntry(context, _budgetHistoryList[index].id);
                },
              ),
            );
          })),
    );
  }
}
