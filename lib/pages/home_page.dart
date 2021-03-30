import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
}

_body() {
  return Center(
    child: Text("Luis Ostrowski",
      style: TextStyle(
        fontSize: 25,
        color: Colors.black
      ),)
  );
}
