import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  const ButtonWidget({required this.title, this.onPressed, super.key});

  final double radii = 8.0;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            )),
            fixedSize: MaterialStateProperty.all<Size>(
                Size(MediaQuery.of(context).size.width, 56)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered))
                  return Colors.blue.withOpacity(0.04);
                if (states.contains(MaterialState.focused) ||
                    states.contains(MaterialState.pressed))
                  return Colors.blue.withOpacity(0.12);
                return null;
              },
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromRGBO(23, 37, 84, 1))),
        onPressed: onPressed,
        child: Text(title));
  }
}
