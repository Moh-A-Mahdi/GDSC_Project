class UserModel {
  String? uid;
  String? email;
  String? password;

  UserModel({this.email, this.password});

  factory UserModel.fromMap(map) {
    return UserModel(
      email: map['email'],
      password: map['password'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }
}
