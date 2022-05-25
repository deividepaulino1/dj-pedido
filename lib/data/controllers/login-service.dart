import 'package:shared_preferences/shared_preferences.dart';

class LoginService {
  fazerLogin1(login, senha) async {
    if (login == 'deivide@teste.com' && senha == '1') {
      return true;
    }
    return false;
  }
}
