class ProductListData {
  final String productData;

  ProductListData.fromJsonMap(Map<String, dynamic> map)
      : productData = map['productData'];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['productData'] = productData;
    return data;
  }
}