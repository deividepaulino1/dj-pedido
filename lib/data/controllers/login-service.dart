import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dj_pedido/data/controllers/settings.dart';
import 'package:dj_pedido/data/models/user-model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginService {
  static Future<UserModel> login(String email, String senha) async {
    var userData;

    var token = await SharedPreferences.getInstance();

    Map params = {'username': email, 'password': senha};

    var body = json.encode(params);
    var response = await Dio().get(
      '${ApiSettings.api}/login',
      queryParameters: {},
      options: Options(
        headers: {
          'Authorization': 'Authorization',
        },
      ),
    );

    if (response.statusCode == 200) {
      // userData = Model.fromJson(response.data);
      print('Chegou no retorno 200' + response.data);

      token.setString('token', userData.token);
    }

    if (response.statusCode == 400) {}

    if (response.statusCode != 200 | 400) {}

    return userData;
  }

  fazerLogin1(login, senha) async {
    if (login == '1' && senha == '1') {
      return true;
    }
    return false;
  }
}
