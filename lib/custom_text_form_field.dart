import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.controller, required this.validator, required this.hintText});

  final String hintText;
  final TextEditingController? controller;
  final String? Function(String? value) validator;

  @override
  Widget build(BuildContext context) {
    return
          TextFormField(
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                    borderRadius:  BorderRadius.all(Radius.circular(5))
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius:  BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: Colors.red)
                )
            ),
          );
  }
}
