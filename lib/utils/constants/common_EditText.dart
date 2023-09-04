
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'color.dart';



class EditText extends StatefulWidget {
  TextEditingController? textController;
  final String? lable;
  bool? suggestion;
  final TextInputType? textInputType;
  bool? autocorrect;
  final bool? obscure;
  final String? hint;
  final Color? color;
  final Function()? suffixIconOnpress;
  final FormFieldValidator formvalidate;
   EditText({
    Key? key,
    this.textController,
    this.lable,
     this.textInputType,
    this.obscure,
    this.suffixIconOnpress,
    required this.hint,
    required this.formvalidate,
     this.color,
  }) : super(key: key);
  @override
  State<EditText> createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
   bool obscure = false;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      keyboardType: widget.textInputType,
      cursorColor: AppColor.app_color,
      controller: widget.textController,
      validator: widget.formvalidate,
      decoration: InputDecoration(
        hintText: widget.hint,
        labelText: widget.lable,
        labelStyle: TextStyle(color: AppColor.color_black),
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.app_color)),
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.app_color)),
      ),
    );

  }
}