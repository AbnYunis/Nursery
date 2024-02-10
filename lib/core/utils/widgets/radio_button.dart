import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
    const CustomRadioButton({
    super.key, required this.text, required this.value, required this.onChange, required this.currentValue,
  });
  final String text;
  final int value;
  final int currentValue;
  final void Function(int?)? onChange;
    @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.3,
          child: Radio<int>(
            value: widget.value,
            groupValue: widget.currentValue,
            onChanged: widget.onChange,
          ),
        ),
        Text(
          widget.text,
          style: TextStyle(
            color: Color(0xFF1E1E1E),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ],
    );
  }
}