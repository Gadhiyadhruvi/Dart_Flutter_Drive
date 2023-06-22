class HomeCountData {
  final int cartCount;
  final int favoriteCount;
  final int orderCount;

  HomeCountData.fromJsonMap(Map<String, dynamic> map)
      : cartCount = map['cartCount'],
        favoriteCount = map['favoriteCount'],
        orderCount = map['orderCount'];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['cartCount'] = cartCount;
    data['favoriteCount'] = favoriteCount;
    data['orderCount'] = orderCount;
    return data;
  }
}
