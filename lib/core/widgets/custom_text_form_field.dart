import 'package:evently/core/sources/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({required this.hintText, this.prefixIcon,this.suffixicon});

  String hintText;
  Widget? prefixIcon;
  Widget? suffixicon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(prefixIcon: prefixIcon, hintText: hintText,suffixIcon: suffixicon),
    );
  }
}
