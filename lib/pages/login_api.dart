import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginApi {

  static Future<bool> login(String login, String senha) async {
    var url = Uri.parse('http://livrowebservices.com.br/rest/login');
    // Parâmetros de entrada
    Map params = {
      'login' : login,
      'senha' : senha
    };
    var response = await http.post(url, body: params);
    //
    var retorno = 'Response status: ${response.statusCode} Response Body ${response.body}';

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    return true;
  }
  
}