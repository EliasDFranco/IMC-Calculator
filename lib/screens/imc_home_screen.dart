import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';
import 'package:imc_calculator/core/apps_colors.dart';
import 'package:imc_calculator/core/apps_textStyles.dart';
import 'package:imc_calculator/screens/imc_result_screen.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int selectorAge = 6;
  double selectorWeight = 50;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(children: [
            Expanded(
                child: NumberSelector(
                    titulo: "PESO",
                    value: selectorWeight.toInt(),
                    onIncrement: () {
                      setState(() {
                        selectorWeight++;
                      });
                    },
                    onDecrement: () {
                      setState(() {
                        selectorWeight--;
                      });
                    })),
            SizedBox(width: 16),
            Expanded(
                child: NumberSelector(
                    titulo: "EDAD",
                    value: selectorAge,
                    onIncrement: () {
                      setState(() {
                        selectorAge++;
                      });
                    },
                    onDecrement: () {
                      setState(() {
                        selectorAge--;
                      });
                    }))
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ImcResult(
                          height: selectorWeight,
                          age: selectorAge,
                        )));
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.primary)),
                  child: const Text("Calcular tu masa corporal ideal",
                      style: TextStyles.bodytext))),
        ),
      ],
    );
  }
}
