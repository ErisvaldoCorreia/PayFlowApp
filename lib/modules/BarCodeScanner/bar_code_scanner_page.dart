import 'package:flutter/material.dart';
import 'package:pay_flow/components/SetBottomButtons/set_bottom_buttons.dart';
import 'package:pay_flow/core/themes/app_colors.dart';
import 'package:pay_flow/core/themes/app_text_styles.dart';

class BarCodeScannerPage extends StatefulWidget {
  BarCodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarCodeScannerPageState createState() => _BarCodeScannerPageState();
}

class _BarCodeScannerPageState extends State<BarCodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Escaneie o código de barras',
            style: TextStyles.buttonBackground,
          ),
          centerTitle: true,
          leading: BackButton(
            color: AppColors.white,
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.black,
            )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                )),
            Expanded(
                child: Container(
              color: Colors.black,
            )),
          ],
        ),
        bottomNavigationBar: Container(
          height: 56,
          child: SetBottomButtons(
            primaryTitle: "Digite o código",
            primaryOnPressed: () {},
            secondaryTitle: 'Abrir da Galeria',
            secondaryOnPressed: () {},
          ),
        ));
  }
}
