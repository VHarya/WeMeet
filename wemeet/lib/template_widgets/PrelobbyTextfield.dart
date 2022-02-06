import 'package:flutter/material.dart';

class PrelobbyTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String placeholder;
  final bool isPassword;
  final EdgeInsets? margin;

  const PrelobbyTextfield({ Key? key, required this.controller, required this.placeholder, required this.isPassword, this.margin }) : super(key: key);

  @override
  _PrelobbyTextfieldState createState() => _PrelobbyTextfieldState();
}

class _PrelobbyTextfieldState extends State<PrelobbyTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 4,
            offset: Offset(2, 4),
          ),
        ]
      ),
      margin: widget.margin,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none
          ),
          hintText: widget.placeholder,
          hintStyle: const TextStyle(
            color: Color.fromRGBO(100, 100, 100, 0.8),
            fontStyle: FontStyle.italic,
          ),
          fillColor: const Color.fromRGBO(215, 215, 215, 1.0),
          filled: true,
        ),
        obscureText: widget.isPassword,
        controller: widget.controller,
      ),
    );
  }
}