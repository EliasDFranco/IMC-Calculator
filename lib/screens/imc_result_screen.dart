import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imc_calculator/core/apps_colors.dart';
import 'package:imc_calculator/core/apps_textStyles.dart';

class ImcResult extends StatelessWidget {
  final double height;
  final int age;
  const ImcResult({super.key, required this.age, required this.height});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: toolbarResult(),
      body: bodyResult(),
    );
  }

  Padding bodyResult() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text("Tu resultado es: ",
            style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Hi",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primary)),
              child: Text(
                "Finalizar calculo",
                style: TextStyles.bodytext,
              )),
        )
      ]),
    );
  }

  AppBar toolbarResult() {
    return AppBar(
      title: Text("Resultado"),
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
    );
  }
}
