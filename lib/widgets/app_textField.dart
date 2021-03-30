import 'package:flutter/material.dart';

class appTextField extends StatelessWidget {
  String label;
  String hint;

  //
  bool password;
  TextEditingController fieldController;
  FormFieldValidator<String> fieldValidator;
  TextInputType keyBoardType;
  TextInputAction textInputAction;
  FocusNode focusNode;
  FocusNode nextFocus;

  appTextField(this.label, this.hint,
      {this.password = false,
      this.fieldController,
      this.fieldValidator,
      this.keyBoardType,
      this.textInputAction,
      this.focusNode,
      this.nextFocus});

  @override
  Widget build(BuildContext context) {
    /*
  // Cria um Widget TextFormField.
  // TextEditingController - Passa qual qual do formulário vamos controlar no methodo
  // obscureText - Se queremos esconder o contéudo digitado no campo
  // FormFieldValidator - Passa a function para validação de dados do campo
  // TextInputType - Passa o tipo de dado que será digitado no campo, string, number, email.
  // TextInputAction - Defini a função do botão concluir do teclado, por exemplo podemos substituir por next para avançar para o próximo campo.
  // FocusNode - Defini o campo o qual queremos controlar o fuco (nextFocus)
  //
 */
    return TextFormField(
      controller: fieldController,
      obscureText: password,
      validator: fieldValidator,
      keyboardType: keyBoardType,
      textInputAction: textInputAction,
      focusNode: focusNode,
      onFieldSubmitted: (String text) {
        if (nextFocus != null) {
          FocusScope.of(context).requestFocus(nextFocus);
        }
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        labelText: label,
        labelStyle: TextStyle(fontSize: 25, color: Colors.grey),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.blue),
      ),
    );
  }
}
