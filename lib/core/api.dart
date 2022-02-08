import 'package:http/http.dart' as http;
import 'dart:typed_data';
import "package:pointycastle/export.dart";
import 'package:convert/convert.dart';
import 'dart:convert';

/*
import 'dart:convert' as ConvertPack;

import 'package:encrypt/encrypt.dart' as EncryptPack;
import 'package:crypto/crypto.dart' as CryptoPack;
*/
//import 'dart:convert' as ConvertPack;
/*
String extractPayload(String payload) {
  String strPwd = "SuperSecretKey";
  String strIv = 'SuperSecretBLOCK';
  var iv = CryptoPack.sha256
      .convert(ConvertPack.utf8.encode(strIv))
      .toString()
      .substring(0, 16); // Consider the first 16 bytes of all 64 bytes
  var key = CryptoPack.sha256
      .convert(ConvertPack.utf8.encode(strPwd))
      .toString()
      .substring(0, 32); // Consider the first 32 bytes of all 64 bytes
  EncryptPack.IV ivObj = EncryptPack.IV.fromUtf8(iv);
  EncryptPack.Key keyObj = EncryptPack.Key.fromUtf8(key);
  final encrypter = EncryptPack.Encrypter(
      EncryptPack.AES(keyObj, mode: EncryptPack.AESMode.cbc)); // Apply CBC mode
  String firstBase64Decoding = new String.fromCharCodes(
      ConvertPack.base64.decode(payload)); // First Base64 decoding
  final decrypted = encrypter.decrypt(
      EncryptPack.Encrypted.fromBase64(firstBase64Decoding),
      iv: ivObj); // Second Base64 decoding (during decryption)
  return decrypted;
}
*/
/*
{
  aesKey: W+vWRO+MGS2RuMg/X/uAlQY4syxRYJuPx0k+lpgdPSU=, 
  aesIV: 5pDEUmIoUn+ZmMMuQb9vUA==, 
  authorization: fcd64a62-e57e-4fdb-9e23-ac50a67a1ed5, 
  lifeTime: 2022-02-07T21:45:48+00:00, 
  status: {isSuccess: true, error: {code: 0, message: }}}

*/
class Api {
  Api.instance();
  static final Api _api = Api.instance();
  factory Api() => _api;

  final _baseUrl = "https://mobilechallenge.veripark.com/api/handshake/start";
  Future<bool> login(String mail, String password) async {
    /*
    // String plaintext = extractPayload("5pDEUmIoUn+ZmMMuQb9vUA==");
    String credentials = "W+vWRO+MGS2RuMg/X/uAlQY4syxRYJuPx0k+lpgdPSU=";
    ConvertPack.Codec<String, String> stringToBase64 =
        ConvertPack.utf8.fuse(ConvertPack.base64);

    String decoded = stringToBase64.decode(credentials);

    print(decoded); // This is a Test!
*/
    return false;
    //showProgressDialog("Giriş Yapılıyor...");
    /*
    Uri url = Uri.parse(_baseUrl);
    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };
    final msg = ConvertPack.jsonEncode({
      "deviceId": "12ddd1d12d12d12",
      "systemVersion": "12.2",
      "platformName": "iOS",
      "deviceModel": "iPhone XS Max",
      "manifacturer": "Apple"
    });

    var response = await http.post(
      url,
      headers: headers,
      body: msg,
    );

    /*
    http.Response response = await http.post(url, headers: {
      "Content-Type": "application/json"
    }, body: {
      "deviceId": "",
      "systemVersion": "12.2",
      "platformName": "iOS",
      "deviceModel": "iPhone XS Max",
      "manifacturer": "Apple"
    }); */
    //print(response.body);
    var jsonResponse = ConvertPack.jsonDecode(response.body);

    //closeProgressDialog();
    //if (jsonResponse != "Email veya şifre yanlış.") {
    print(jsonResponse);
    //final storageController = StorageController();
    //storageController.saveLogin(jsonResponse);
    //User.fromJson(jsonResponse[0]);
    //   return true;
    // }
    */
    return false;
  }
}
