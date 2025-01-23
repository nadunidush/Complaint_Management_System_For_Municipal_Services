import 'package:flutter/material.dart';
import '../constant/colors.dart';

class TextFormFieldWidget extends StatefulWidget {
  final IconData icon;
  final String hintText;
  const TextFormFieldWidget({
    super.key,
    required this.icon,
    required this.hintText,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.icon,
          size: 35,
        ),
        prefixIconColor: secondaryColor,
        // fillColor: Colors.white,
        // filled: true,
        border: UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.black),
        ),
        hintText: widget.hintText.toString(),
      ),
      style: TextStyle(color: Colors.black),
    );
  }
}
