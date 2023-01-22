import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vets_club/configurations/themes.dart';

class TextFieldWidget extends StatelessWidget {
  String? label;
  String? hint;
  TextEditingController controller;
  bool? isVisible;
  Widget? suffix;
  Widget? prefix;
  int? minLine;
  int? maxLine;
  bool? showCursor = true;
  bool? readOnly = false;
  GestureTapCallback? onTap;
  TextInputType? keyboardType;
  FormFieldValidator<String>? validator;
  TextFieldWidget(
      { this.label,
        this.hint,
        this.onTap,
        this.showCursor,
        this.readOnly,
      required this.controller,
      this.isVisible,
      this.suffix,
      this.prefix,
      this.validator,
       this.keyboardType,this.maxLine = 1,this.minLine = 1});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      showCursor: showCursor,
      readOnly: readOnly??false,
      onTap: onTap,
      cursorColor: MyTheme.boldBlue,
      controller: controller,
      obscureText: isVisible ?? false,
      validator: validator,
      keyboardType: keyboardType,
      maxLines: maxLine,
      minLines: minLine,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: hint,
          suffixIcon: suffix,
          prefixIcon: prefix,
          filled: true,
          fillColor: MyTheme.lightBlue,
          labelText: label,
          labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontSize: 16.sp
          ),
          errorStyle: TextStyle(
            fontSize: 14.sp
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25).w,
              borderSide: BorderSide(color: MyTheme.boldBlue)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25).w,
              borderSide: BorderSide(color: MyTheme.boldBlue)),
          border:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(25).w,
              borderSide: BorderSide(color: MyTheme.boldBlue)),
      ),
    );
  }
}
