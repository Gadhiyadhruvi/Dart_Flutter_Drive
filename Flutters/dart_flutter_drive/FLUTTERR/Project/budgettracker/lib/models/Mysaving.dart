class MyTransaction{
  int? id;
  
  int? amount;
  String? type;

  
  String? title;

  MyTransactionMap(){
    var mapping = Map<String, dynamic>();
    mapping ['id'] = id ?? null;
    mapping ['type'] = type!;
     mapping ['title'] = title!;
    mapping ['amount'] = amount ?? null;
    
    return mapping;
  }
}