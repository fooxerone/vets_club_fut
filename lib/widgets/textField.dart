import 'package:flutter/material.dart';
import 'package:vets_club/configurations/themes.dart';

class TextFieldWidget extends StatelessWidget {
  String label;
  TextEditingController controller;
  bool? isVisible;
  Widget? suffix;
  Widget? prefix;
  int? minLine;
  int? maxLine;
  TextInputType keyboardType;
  FormFieldValidator<String>? validator;
  TextFieldWidget(
      {required this.label,
      required this.controller,
      this.isVisible,
      this.suffix,
      this.prefix,
      this.validator,
      required this.keyboardType,this.maxLine = 1,this.minLine = 1});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: MyTheme.boldBlue,
      controller: controller,
      obscureText: isVisible ?? false,
      validator: validator,
      keyboardType: keyboardType,
      maxLines: maxLine,
      minLines: minLine,
      decoration: InputDecoration(
          suffixIcon: suffix,
          prefixIcon: prefix,
          filled: true,
          fillColor: MyTheme.lightBlue,
          labelText: label,
          labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontSize: 16
          ),
          errorStyle: TextStyle(
            fontSize: 14
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: MyTheme.boldBlue)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: MyTheme.boldBlue)),
          border:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: MyTheme.boldBlue)),
      ),
    );
  }
}
