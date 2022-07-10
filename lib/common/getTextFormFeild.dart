import 'package:flutter/material.dart';



class getTextFormField extends StatelessWidget {
  TextEditingController controller;
  String hintName;
  IconData icon;
  bool isObscureText;
  TextInputType inputType;
  bool isEnable;

  getTextFormField(
      {required this.controller,
      required this.hintName,
      required this.icon,
      this.isObscureText = false,
      this.inputType = TextInputType.text,
      this.isEnable = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: controller,
        obscureText: isObscureText,
        enabled: isEnable,
        keyboardType: inputType,
        validator: (value) {
          // if (value == null || value.isEmpty) {
          //   return 'Please enter $hintName';
          // }
          // if (hintName == "Email" && !validateEmail(value)) {
          //   return 'Please Enter Valid Email';
          // }
          // return null;
        },
        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
          suffixIcon: Icon(icon,color: Colors.white,),
          hintText: hintName,
          labelText: hintName,

        ),
      ),
    );
  }
}