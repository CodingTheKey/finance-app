import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String placeholder;
  final TextStyle? margin;
  InputWidget({required this.placeholder, this.margin});
  static const double radii = 8.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: TextField(
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
