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
          TextFormField(
            decoration: InputDecoration(
              labelText: "Login",
              hintText: "Digite o Login"
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Senha",
              hintText: "Digite a Senha"
            ),
          ),
          Container(
            height: 46,
            child: RaisedButton(
              color: Colors.blue,
              child: Text("Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
                ),
              ),
              onPressed: () {
                AlertDialog(
                  title: "Login",
                  content: ,
                )
              },
            ),
          )
        ],
      ),
    );
  }
}
