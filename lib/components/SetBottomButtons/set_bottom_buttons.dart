import 'package:flutter/material.dart';
import 'package:pay_flow/components/LabelButton/label_button.widget.dart';
import 'package:pay_flow/core/themes/app_colors.dart';

class SetBottomButtons extends StatelessWidget {
  final String primaryTitle;
  final String secondaryTitle;
  final VoidCallback primaryOnPressed;
  final VoidCallback secondaryOnPressed;
  const SetBottomButtons({
    Key? key,
    required this.primaryTitle,
    required this.secondaryTitle,
    required this.primaryOnPressed,
    required this.secondaryOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
              child: LabelButton(
            title: primaryTitle,
            onPressed: primaryOnPressed,
          )),
          VerticalDivider(
            color: AppColors.stroke,
          ),
          Expanded(
            child: LabelButton(
              title: secondaryTitle,
              onPressed: secondaryOnPressed,
            ),
          )
        ],
      ),
    );
  }
}
