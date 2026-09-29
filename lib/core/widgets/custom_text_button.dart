import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
   CustomTextButton({required this.text,required this.onTap, this.textAlign=TextAlign.start});
String text;
VoidCallback onTap;
TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap:onTap,
     child: Text(textAlign: textAlign ,text,style: Theme.of(context).textTheme.bodyMedium,)
    );
  }
}
