class MyExpense{
  int? id;
  String? month;
  int? amount;
  String? created_at;
  String? title;

  MyExpenseMap(){
    var mapping = Map<String, dynamic>();
    mapping ['id'] = id ?? null;
    mapping ['month'] = month!;
    mapping ['title'] = title!;
    mapping ['amount'] = amount ?? null;
    mapping ['created_at'] = created_at ?? null;
    return mapping;
  }
}