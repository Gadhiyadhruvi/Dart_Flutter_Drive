import 'package:project3/models/Mybudget.dart';
import 'package:project3/models/Myexpense.dart';
import 'package:project3/models/Mysaving.dart';
import 'package:project3/repository.dart';

class MyServices {
  late Repository _repository;

  MyServices(){
    _repository = Repository();
  }

 

    insertExpenseService(MyExpense myExpense)async {
    return await _repository.insertExpense("myexpense", myExpense.MyExpenseMap());
  }

  insertBudgetService(MyBudget myBudget)async {
    return await _repository.insertBudget("mybudget", myBudget.MyBudgetMap());
  }
  insertTransactionService(MyTransaction myTransaction)async {
    return await _repository.insertBudget("mytransaction", myTransaction.MyTransactionMap());
  }

  historyGetAllBudget()async{
    return await _repository.selectMyBudget("mybudget");
  }

   historyGetAllExpense()async{
    return await _repository.selectMyExpense("myexpense");
  }
   historyGetAllTransaction()async{
    return await _repository.selectMyTransaction("mytransaction");
  }

   deleteDataExpenseService(expenseID)async{
    return await _repository.deleteEntryFromExpense("myexpense", expenseID);
  }

  deleteDataBudgetService(budgetID)async{
    return await _repository.deleteEntryFromBudget("mybudget", budgetID);
  }
 deleteDataTransactionService(transactionID)async{
    return await _repository.deleteEntryFromTransaction("mytransaction", transactionID);
  }

  fetchDataExpenseService(titlename)async{
    return await _repository.fetchEntryBytitle("myexpense", titlename);
  }
  fetchDataBudgetService(monthname)async{
    return await _repository.fetchEntryByMonth("mybudget", monthname);
  }



 

  


 
}
