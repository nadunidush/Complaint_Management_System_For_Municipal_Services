import 'package:complaint_management_system/constant/colors.dart';
import 'package:flutter/material.dart';

class FileFormWidget extends StatefulWidget {
  final String? title;
  final IconData icon;
  final String? hintText;
  FileFormWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.hintText,
  });

  @override
  State<FileFormWidget> createState() => _FileFormWidgetState();
}

class _FileFormWidgetState extends State<FileFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
        ),
        Text(
          "${widget.title}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        SizedBox(
          height: 7,
        ),
        TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(
              widget.icon,
              color: secondaryColor,
              size: 30,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: "${widget.hintText}",
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          maxLines: null,
          keyboardType: TextInputType.multiline,
        ),
      ],
    );
  }
}
