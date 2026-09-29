import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
   CustomElevatedButton({required this.title,required this.onpress});
  String title;
 VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onpress, child: Text(title));
  }
}
