import 'package:flutter/material.dart';

//width랑 height 입력 받으면 해당 크기로 만들어줌
//label 입력받기

class TextFieldWidget extends StatefulWidget {
  final String label;
  final double width;
  final double height;
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;

  const TextFieldWidget({
    Key? key,
    required this.label,
    required this.width,
    required this.height,
    required this.controller,
    required this.obscureText,
    required this.hintText,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextField(
        decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.hintText,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: Colors.lightBlueAccent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
          ),
        ),
        obscureText: widget.obscureText,
      ),
    );
  }
}
