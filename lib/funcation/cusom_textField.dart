import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  final String hintText ;
  final  Icon suffixIcon ;
  final  Color color_suffixIcon ;
  final  TextInputType type ;
  final TextEditingController mycontroller ;
  const customTextField({super.key, required this.hintText, required this.suffixIcon, required this.color_suffixIcon, required this.type, required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      controller: mycontroller,
      decoration: InputDecoration(
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: hintText,
        suffixIcon: suffixIcon,
        suffixIconColor: color_suffixIcon,
      ),
    );
  }
}
