import 'package:flutter/material.dart';
import 'package:pay_flow/components/LabelButton/label_button.widget.dart';
import 'package:pay_flow/core/themes/app_colors.dart';

class SetBottomButtons extends StatelessWidget {
  final String primaryTitle;
  final String secondaryTitle;
  final VoidCallback primaryOnPressed;
  final VoidCallback secondaryOnPressed;
  final bool primaryColorPrimary;
  final bool secondaryColorPrimary;
  const SetBottomButtons({
    Key? key,
    required this.primaryTitle,
    required this.secondaryTitle,
    required this.primaryOnPressed,
    required this.secondaryOnPressed,
    this.primaryColorPrimary = false,
    this.secondaryColorPrimary = false,
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
            enableColorPrimary: primaryColorPrimary,
          )),
          VerticalDivider(
            color: AppColors.stroke,
          ),
          Expanded(
            child: LabelButton(
              title: secondaryTitle,
              onPressed: secondaryOnPressed,
              enableColorPrimary: secondaryColorPrimary,
            ),
          )
        ],
      ),
    );
  }
}
