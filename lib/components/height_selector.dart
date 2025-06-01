import 'package:flutter/material.dart';
import 'package:imc_calculator/core/apps_colors.dart';
import 'package:imc_calculator/core/apps_textStyles.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double height = 170; // Altura por default
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text("ALTURA", style: TextStyles.bodytext),
            ),
            Text("${height.toStringAsFixed(0)} cm ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            Slider(
              value: height,
              onChanged: (nuevoValor) {
                setState(() {
                  height = nuevoValor;
                });
              },
              divisions: 100,
              activeColor: AppColors.primary,
              label: "$height cm",
              min: 120,
              max: 220,
            )
          ],
        ),
      ),
    );
  }
}
