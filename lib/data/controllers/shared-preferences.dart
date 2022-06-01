import 'package:shared_preferences/shared_preferences.dart';

class SharedManager {
  recuperarToken() async {
    var token = await SharedPreferences.getInstance();
    String _token = (token.getString('tokenjwt') ?? '');

    if (_token == '') {
      return false;
    }
    return true;
  }

  deletarToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }

  recuperarEmail() async {
    var email = await SharedPreferences.getInstance();
    String _email = (email.getString('email') ?? '');
  }
}
