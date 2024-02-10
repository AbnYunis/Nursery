import 'package:flutter/material.dart';

class CheckForgetPart extends StatefulWidget {
  const CheckForgetPart({
    super.key,
  });

  @override
  State<CheckForgetPart> createState() => _CheckForgetPartState();
}

class _CheckForgetPartState extends State<CheckForgetPart> {
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Checkbox(
          value: isSelected,
          fillColor: MaterialStateProperty.all(Colors.green),
          onChanged: (value) {
            setState(() {
              isSelected=value!;
            });
          },
        ),
        const Text(
          'Keep me logged in',
          style: TextStyle(
            color: Color(0xFF292D32),
            fontSize: 14,
            fontFamily: 'Josefin Sans',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Forgot Password?',
            style: TextStyle(
              color: Color(0xFF225B8B),
              fontSize: 14,
              fontFamily: 'Josefin Sans',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
