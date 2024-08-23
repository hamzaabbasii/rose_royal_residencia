class UserModel {
  final String cnic;
  final String password;
  const UserModel({required this.cnic, required this.password});
  UserModel toMap(Map<String, dynamic> map) {
    return UserModel(
      cnic: map['cnic'],
      password: map['password'],
    );
  }

  UserModel fromMap(Map<String, dynamic> map) {
    return UserModel(
      cnic: map['cnic'],
      password: map['password'],
    );
  }
}
