import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:imc_calculator/core/apps_colors.dart';

import '../core/apps_textStyles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String?
      selectedGender; // Creamos una variable nulable, para cuando no se este marcando ninguno de los géneros.
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Man - Male
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, right: 8, bottom: 16),
            child: Container(
              decoration: BoxDecoration(
                // Aqui realizamos un if & else, pero de una forma abreviada dentro de un container | Si se pasa el puntero por hombre cambia o no de color, lo mismo para mujer
                color: selectedGender == "Male"
                    ? AppColors.backgroundComponentSelected
                    : AppColors.backgroundComponent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Image.asset("assets/Images/ImageMale.png", height: 100),
                    SizedBox(height: 20),
                    Text("Male".toUpperCase(),
                        style: TextStyle(color: Colors.white, fontSize: 15))
                  ],
                ),
              ),
            ),
          ),
        ),
        // Woman - Female
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left:8, top: 16, bottom: 16, right: 16),
            child: Container(
              decoration: BoxDecoration(
                color: selectedGender == "Female"
                    ? AppColors.backgroundComponentSelected
                    : AppColors.backgroundComponent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Image.asset("assets/Images/Imagefemale.png", height: 100),
                    SizedBox(height: 20),
                    Text("Female".toUpperCase(),
                        style: TextStyles
                            .bodytext) // Aqui le pasamos la clase que hemos creado para no repetir tanto mismo código.
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
