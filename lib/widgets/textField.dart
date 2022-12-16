import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  String label;
  TextEditingController controller;
  bool? isVisible;
  Widget? suffix;
  Widget? prefix;
  TextInputType keyboardType;
  FormFieldValidator<String>? validator;
  TextFieldWidget(
      {required this.label,
      required this.controller,
      this.isVisible,
      this.suffix,
      this.prefix,
      this.validator,
      required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isVisible ?? false,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          suffixIcon: suffix,
          prefixIcon: prefix,
          filled: true,
          fillColor: Color(0xFFB6D5E1),
          labelText: label,
          labelStyle: Theme.of(context).textTheme.bodySmall,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Color(0xFF65799B))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Color(0xFF65799B)))),
    );
  }
}
