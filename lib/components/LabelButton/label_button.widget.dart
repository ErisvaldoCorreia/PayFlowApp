import 'package:flutter/material.dart';
import 'package:pay_flow/core/themes/app_text_styles.dart';

class LabelButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const LabelButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyles.buttonHeading,
        ),
      ),
    );
  }
}
