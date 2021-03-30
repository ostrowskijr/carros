import 'package:carros/pages/home_page.dart';
import 'package:carros/pages/login_api.dart';
import 'package:carros/utils/nav.dart';
import 'package:carros/widgets/app_button.dart';
import 'package:carros/widgets/app_textField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  // Instancias para controlar o conteudo digitado nos campo Login e Senha;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Instancias para controlar o conteudo digitado nos campo Login e Senha;
  final _tLogin = TextEditingController();
  final _tPassword = TextEditingController();

  // Variável para controlar a instância do formulário.
  final _formKey = GlobalKey<FormState>();

  // Variável para controlar o evento Focus em um determinado campo
  final _focusPassword = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Carros"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            appTextField(
              "Login",
              "Digite seu Login",
              fieldController: _tLogin,
              fieldValidator: (text) {
                return _validateField(text, "Digite o Login");
              },
              keyBoardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              nextFocus: _focusPassword,
            ),
            SizedBox(height: 10),
            appTextField(
              "Senha",
              "Digite a Senha",
              password: true,
              fieldController: _tPassword,
              fieldValidator: (text) {
                return _validateField(text, "Digite a Senha");
              },
              keyBoardType: TextInputType.number,
              focusNode: _focusPassword,
            ),
            appButton("Login", _onClickLogin)
          ],
        ),
      ),
    );
}

// Funtion executada ao clicar no botão de login a mesma é passada via parâmetro.
  void _onClickLogin() async {
    // A function abaixo pega o estado corrente do form e realiza validação em todos os campos.
    if (!_formKey.currentState.validate()) {
      return;
    }
    // Recupera valor digitados no campo login e senha.
    String login = _tLogin.text;
    String password = _tPassword.text;
    print("Formulário valida com sucesso!");
    print("Login: " + login + " Senha: " + password);
    //
    bool loginOk = await LoginApi.login(login, password);
    if (loginOk) {
      push(context, HomePage());
    }
  }

// Função generica para validação de dados com campo, a mesma é passada via parâmetro.
  String _validateField(text, mensagem) {
    if (text.isEmpty) {
      return mensagem;
    }
    return null;
  }
}
