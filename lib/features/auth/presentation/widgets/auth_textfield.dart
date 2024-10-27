import 'package:flutter/material.dart';

class AuthTextfield extends StatelessWidget {
  final TextEditingController controller;
  final bool isPassword;
  final String hintText ;
  const AuthTextfield(
    {
      super.key,
      required this.hintText,
      required this.controller,
      this.isPassword = false
    }
   );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (value) {
        if(value!.isEmpty){
          return "$hintText is missing";
        }
        return null;
      },
      obscureText: isPassword,
    );
  }
}