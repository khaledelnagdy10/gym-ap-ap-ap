class UserData {
  final String id;
  final String name;
  final String email;
  final double weight;
  final double height;
  final String gender;
  final int age;
  final String level;
  final String userType;
  final String imageUrl;

  UserData({
    required this.id,
    required this.name,
    required this.email,
    required this.weight,
    required this.height,
    required this.gender,
    required this.age,
    required this.level,
    required this.userType,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      'userType': userType,
      "name": name,
      "email": email,
      "weight": weight,
      'imageUrl':imageUrl,
      "age": age,
      "height": height,
      "gender": gender,
      "level": level
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
        id: map['id'] as String,
        name: map['name'] as String,
        email: map['email'] as String,
        weight: double.parse(map['weight'].toString()),
        height: double.parse(map['height'].toString()),
        imageUrl: map['imageUrl'] as String,
        gender: map['gender'] as String,
        age: int.parse(map['age'].toString()),
        level: map['level'] as String,
        userType: map['userType'] as String,
    );
  }
}
