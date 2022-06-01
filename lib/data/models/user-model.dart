class UserModel {
  String? nome;
  String? username;
  String? password;
  String? token;

  UserModel({this.nome, this.username, this.password, this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    username = json['username'];
    password = json['password'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['username'] = this.username;
    data['password'] = this.password;
    data['token'] = this.token;
    return data;
  }
}
