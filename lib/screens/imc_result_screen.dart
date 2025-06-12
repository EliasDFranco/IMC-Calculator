import 'package:flutter/material.dart';
import 'package:imc_calculator/core/apps_colors.dart';
import 'package:imc_calculator/core/apps_textStyles.dart';

class ImcResult extends StatelessWidget {
  final double height;
  final double weight;
  const ImcResult({super.key, required this.weight, required this.height});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: toolbarResult(),
      body: bodyResult(context),
    );
  }

  Padding bodyResult(BuildContext context) {
    double fixedHeight = height * 100;
    double ImcResult = weight / (height * height);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          "Tu resultado es: ",
          style: TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      getTitlebyImc(ImcResult),
                      style: TextStyle(
                          color: getColorbyImc(ImcResult),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    ImcResult.toStringAsFixed(2),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 36),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      getDescriptionImc(ImcResult),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
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

Color getColorbyImc(double ImcResult) {
  if (ImcResult < 18.5) {
    return Colors.blue;
  } else if (ImcResult < 23.9) {
    return Colors.green;
  } else if (ImcResult < 29.9) {
    return Colors.orange;
  } else {
    return Colors.red;
  }
}

String getTitlebyImc(double ImcResult) {
  if (ImcResult < 18.5) {
    return "Tu Indice de Masa Corporal es bajo";
  } else if (ImcResult < 23.9) {
    return "Tu Indice de Masa Corporal es normal";
  } else if (ImcResult < 29.9) {
    return "Tu Indice de Masa Corporal es sobrepeso";
  } else {
    return "Tu Indice de Masa Corporal es obesidad";
  }
}

String getDescriptionImc(double ImcResult) {
  if (ImcResult < 18.5) {
    return "Estás por debajo del peso ideal. Es importante revisar tu alimentación y consultar a un profesional de salud para evaluar posibles causas.";
  } else if (ImcResult < 23.9) {
    return "Tienes un peso saludable. ¡Sigue así! Mantener una buena alimentación y actividad física es clave para tu bienestar.";
  } else if (ImcResult < 29.9) {
    return "Tienes sobrepeso. Puede que sea momento de adoptar hábitos más saludables para evitar futuros riesgos.";
  } else {
    return "Tu IMC indica obesidad. Es importante que consultes a un profesional de salud para acompañarte en un plan de mejora";
  }
}
