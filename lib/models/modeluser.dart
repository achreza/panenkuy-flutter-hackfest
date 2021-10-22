class UserModel {
  int? id;
  String? name;
  String? email;
  String? token;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'token': token,
    };
  }
}