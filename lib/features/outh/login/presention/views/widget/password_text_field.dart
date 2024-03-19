import 'package:flutter/material.dart';
import 'package:rehlatyuae/core/utils/custom_text_field.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomTextField(
        hintText: 'youremail@mail.com',
        suffixIcon: Icon(Icons.email),
      ),
    );
  }
}
