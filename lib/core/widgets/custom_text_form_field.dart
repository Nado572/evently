import 'package:evently/core/sources/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({required this.hintText, this.prefixIcon,this.suffixicon, required this.controller,this.validator});

  String hintText;
  Widget? prefixIcon;
  Widget? suffixicon;
  TextEditingController controller;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(prefixIcon: prefixIcon, hintText: hintText,suffixIcon: suffixicon),
    );
  }
}
