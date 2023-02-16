import 'package:flutter/material.dart';
import 'package:project3/Budget/budgetscreen.dart';
import 'package:project3/Expence/Expense_screen.dart';
import 'package:project3/Expence/expenses.dart';
import 'package:project3/models/Myexpense.dart';
import 'package:project3/services/MyServices.dart';
import 'package:project3/startscreen.dart';
import 'package:project3/Budget/viewbudgethistory.dart';
import 'package:project3/transaction.dart';
import 'package:sizer/sizer.dart';
import 'models/Mybudget.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int addmoney = 0;
  List<MyBudget> _budgetHistoryList = <MyBudget>[];

  var _myservices = MyServices();

  void initState() {
    getHistrybudget();
    getHistryexpense();
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
        addmoney += _mybudget.amount!;
        print("------addmoney---$entry----");
        print("------addmoney---$addmoney----");
      });
    });
  }

  List<MyExpense> _expenseHistoryList = <MyExpense>[];
  int expensemoney = 0;

  getHistryexpense() async {
    var result = await _myservices.historyGetAllExpense();

    _expenseHistoryList = <MyExpense>[];
    print("-------$result");
    result.forEach((entry) {
      setState(() {
        var _myexpense = MyExpense();

        _myexpense.id = entry['id'];

        _myexpense.amount = entry['amount'];
        _expenseHistoryList.add(_myexpense);
        expensemoney += _myexpense.amount!;
        print("------addmoney---$entry----");
        print("------addmoney---$expensemoney----");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
          backgroundColor: Color.fromARGB(255, 49, 97, 86),
          body: Container(
              width: MediaQuery.of(context).size.width,
              child: Stack(children: [
                Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 64, 160, 137),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100),
                            )))),
                Positioned(
                    top: 8.h,
                    left: 21.w,
                    bottom: 0.h,
                    right: 0.w,
                    child: Text(
                      "YOUR BALANCE",
                      style: TextStyle(
                          fontSize: 35,
                          color: Color.fromARGB(255, 78, 12, 78),
                          fontWeight: FontWeight.w700),
                    )),
                Positioned(
                    right: 25.w,
                    left: 0.w,
                    top: 22.h,
                    child: Image.asset(
                      'assets/images/new.png',
                      fit: BoxFit.cover,
                    )),
                Positioned(
                    left: 33.5.w,
                    right: 0.w,
                    top: 25.h,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Image.asset(
                      'assets/images/piggy2.png',
                      fit: BoxFit.cover,
                    )),
                Positioned(
                    top: 15.h,
                    left: 38.w,
                    bottom: 0.h,
                    right: 0.w,
                    child: Text(
                      "RS.${addmoney - expensemoney}",
                      style: TextStyle(
                          fontSize: 35,
                          color: Color.fromARGB(255, 56, 77, 42),
                          fontWeight: FontWeight.w700),
                    )),
                SafeArea(
                    child: Column(children: [
                  Container(
                      padding: EdgeInsets.only(top: 1.h, left: 2.w, right: 2.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [],
                      )),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Expense_Screen(),
                            ));
                      },
                      child: Container(
                          margin: EdgeInsets.only(
                              right: 8.5.w, left: 8.5.w, top: 50.h),
                          width: 110.w,
                          height: 10.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://png.pngtree.com/thumb_back/fh260/background/20200731/pngtree-blue-carbon-background-with-sport-style-and-golden-light-image_371487.jpg',
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: Stack(children: [
                            Positioned(
                                left: 25.w,
                                right: 0.w,
                                top: 3.h,
                                bottom: 0.h,
                                child: Text(
                                  "MY EXPENSES",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                )),
                            Positioned(
                              child: Image.asset('assets/images/ex2.png'),
                            )
                          ]))),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Budget_Page(),
                            ));
                      },
                      child: Container(
                          margin: EdgeInsets.only(
                              right: 8.5.w, left: 8.5.w, top: 5.h),
                          width: 110.w,
                          height: 10.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://png.pngtree.com/thumb_back/fh260/background/20200731/pngtree-blue-carbon-background-with-sport-style-and-golden-light-image_371487.jpg',
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: Stack(children: [
                            Positioned(
                                left: 25.w,
                                right: 0.w,
                                top: 3.h,
                                bottom: 0.h,
                                child: Text(
                                  "MY BUDGET",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                )),
                            Positioned(
                              child: Image.asset('assets/images/back3.png'),
                            )
                          ]))),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Transaction(),
                            ));
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: 8.h),
                          child: Text(
                            "Show ALL Transactions.",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          )))
                ]))
              ])));
    });
  }
}
