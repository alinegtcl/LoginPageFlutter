import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;
  final Widget? icon;

  const CustomButton({
    required this.title,
    required this.color,
    required this.textColor,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(4.0)),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (icon != null)
              icon!
            else
              Opacity(
                opacity: 0.0,
                child: icon,
              ),
            Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: 15.0,
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: icon,
            ),
          ],
        ),
      ),
    );
  }
}
