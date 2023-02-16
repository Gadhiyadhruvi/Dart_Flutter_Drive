import 'package:flutter/material.dart';
import 'package:project3/models/Mybudget.dart';
import 'package:project3/models/Mysaving.dart';
import 'package:project3/services/MyServices.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  List<MyTransaction> _transactionHistoryList = <MyTransaction>[];

  var _myservices = MyServices();
  var abcd;

  void initState() {
    getHistrytransaction();
    super.initState();
  }

  getHistrytransaction() async {
    var result = await _myservices.historyGetAllTransaction();

    _transactionHistoryList = <MyTransaction>[];
    print("-------$result");
    result.forEach((entry) {
      setState(() {
        var _mytransaction = MyTransaction();

        _mytransaction.id = entry['id'];
        _mytransaction.title = entry['title'];
        _mytransaction.type = entry['type'];

        _mytransaction.amount = entry['amount'];
        _transactionHistoryList.add(_mytransaction);
      });
    });
  }

  _deleteTransactionEntry(BuildContext context, id) {
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
                            await _myservices.deleteDataTransactionService(id);
                        print("entry deleted !!!");
                        getHistrytransaction();
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
        title: Text("Transaction"),
      ),
      body: ListView.builder(
          itemCount: _transactionHistoryList.length,
          itemBuilder: ((context, index) {
            if (_transactionHistoryList[index].type.toString() == "Expense") {
              abcd = Icon(
                Icons.currency_rupee,
                color: Color.fromARGB(255, 220, 23, 56),
              );
            } else {
              abcd = Icon(
                Icons.currency_rupee,
                color: Color.fromARGB(255, 31, 59, 32),
                size: 25,
              );
            }
            return Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color.fromARGB(255, 61, 92, 118)),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: ListTile(
                tileColor: Color.fromARGB(255, 64, 160, 137),
                onTap: () {},
                leading: abcd,
                title: Text(
                  _transactionHistoryList[index].amount.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                subtitle: Text(
                  _transactionHistoryList[index].title!,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 241, 237, 225)),
                ),
                trailing: Text(
                  _transactionHistoryList[index].type!,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 241, 237, 225)),
                ),
                onLongPress: () {
                  _deleteTransactionEntry(
                      context, _transactionHistoryList[index].id);
                },
              ),
            );
          })),
    );
  }
}
