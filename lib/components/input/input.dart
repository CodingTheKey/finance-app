import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputWidget extends StatelessWidget {
  final String placeholder;
  final TextStyle? margin;
  final double? height;
  final double? width;
  final List<MaskTextInputFormatter>? inputFormatters;

  const InputWidget(
      {required this.placeholder,
      this.margin,
      this.height,
      this.width,
      this.inputFormatters,
      super.key});
  static const double radii = 8.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width ?? MediaQuery.of(context).size.width,
        height: 56,
        child: TextField(
            inputFormatters: inputFormatters,
            cursorColor: Colors.grey[600],
            style: TextStyle(color: Colors.grey[600]),
            decoration: InputDecoration(
                label: Text(placeholder),
                floatingLabelStyle: TextStyle(color: Colors.grey[400]),
                labelStyle: TextStyle(color: Colors.grey[600]),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(radii)),
                    borderSide: BorderSide(color: Colors.transparent)),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(radii)),
                    borderSide: BorderSide(color: Colors.transparent)),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(radii)),
                    borderSide: BorderSide(color: Colors.black)),
                focusColor: Colors.white,
                filled: true,
                fillColor: Colors.grey[800])));
  }
}
