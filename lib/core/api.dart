import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Api {
  Api.instance();
  static final Api _api = Api.instance();
  factory Api() => _api;

  final _baseUrl = "http://zrm.getnio.tech/api/";
  Future<bool> login(String mail, String password) async {
    //showProgressDialog("Giriş Yapılıyor...");
    Uri url = Uri.parse(_baseUrl + "login");
    http.Response response = await http.post(url, body: {"email": mail, "password": password});
    var jsonResponse = convert.jsonDecode(response.body);

    //closeProgressDialog();
    if (jsonResponse != "Email veya şifre yanlış.") {
      print(jsonResponse);
      //final storageController = StorageController();
      //storageController.saveLogin(jsonResponse);
      //User.fromJson(jsonResponse[0]);
      return true;
    }
    return false;
  }
}
