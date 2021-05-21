class User {
  String name;
  int age;
  List<String> professtion;

  User({this.name, this.age, this.professtion});

  User copyWith({String name, int age, List<String> professtion}) {
    return User(
        name: name ?? this.name,
        age: age ?? this.age,
        professtion: professtion ?? this.professtion);
  }
}
