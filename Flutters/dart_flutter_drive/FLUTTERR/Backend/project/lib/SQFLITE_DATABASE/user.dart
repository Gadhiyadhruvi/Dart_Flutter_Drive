class User {
  int? id;
  String? name;
  String? contect;

  userMap() {
    var mapping = Map<String, dynamic>();
    mapping["id"] = id ?? null;
    mapping['name'] = name!;
    mapping['contect'] = contect!;

    return mapping;
  }
}
