import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final String snackBarMessage;
  final Color snackBarBgColor;
  final Color buttonBgColor;
  CustomButton({
    this.buttonText = "",
    this.snackBarMessage = "Notification Message",
    this.snackBarBgColor,
    this.buttonBgColor
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = new SnackBar(content: Text(snackBarMessage), backgroundColor: snackBarBgColor,);
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: buttonBgColor,
            borderRadius: BorderRadius.circular(8.0)
        ),
        child: Text(buttonText),
      ),
    );
  }
}
