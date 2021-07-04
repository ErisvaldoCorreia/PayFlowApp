import 'package:flutter/material.dart';
import 'package:pay_flow/components/SetBottomButtons/set_bottom_buttons.dart';
import 'package:pay_flow/core/themes/app_colors.dart';
import 'package:pay_flow/core/themes/app_text_styles.dart';

class BottomSheetWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String primaryTitle;
  final String secondaryTitle;
  final VoidCallback primaryOnPressed;
  final VoidCallback secondaryOnPressed;
  final bool primaryColorPrimary;
  final bool secondaryColorPrimary;
  const BottomSheetWidget({
    Key? key,
    required this.primaryTitle,
    required this.secondaryTitle,
    required this.primaryOnPressed,
    required this.secondaryOnPressed,
    required this.title,
    required this.subTitle,
    this.primaryColorPrimary = false,
    this.secondaryColorPrimary = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Material(
        child: Container(
          color: AppColors.shape,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text.rich(
                      TextSpan(
                        text: title,
                        style: TextStyles.buttonBoldHeading,
                        children: [
                          TextSpan(
                            text: '\n$subTitle',
                            style: TextStyles.buttonHeading,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: AppColors.stroke,
                    height: 1,
                  ),
                  SetBottomButtons(
                    //Left Buttom
                    primaryColorPrimary: true,
                    primaryTitle: primaryTitle,
                    primaryOnPressed: primaryOnPressed,

                    //Right Buttom
                    secondaryTitle: secondaryTitle,
                    secondaryOnPressed: secondaryOnPressed,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
