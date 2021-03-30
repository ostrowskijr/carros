import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          _fieldText("Login", "Digite seu Login"),
          SizedBox(height: 10),
          _fieldText("Senha", "Digite a Senha", password: true),
          _button("Login")
        ],
      ),
    );
  }

  _button(text) {
    return Container(
      height: 46,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _fieldText(label, hint, {bool password = false}) {
    return TextFormField(
      obscureText: password,
      decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 25, color: Colors.grey),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.blue)),
    );
  }
}
