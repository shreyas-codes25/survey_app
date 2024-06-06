import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      { required this.buttonText,
        required this.onTap,
        super.key});
  final void Function() onTap;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(200, 40),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        shape: const StadiumBorder(
          side: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
      onPressed: onTap,
      child: Text(buttonText,textAlign: TextAlign.center,),
    );
  }
}
