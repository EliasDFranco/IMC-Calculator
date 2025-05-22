import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        Column(
          children: [
            Image.asset("assets/Images/ImageMale.png", height: 100),
            Text("Male"),
          ],
        ),
        // Woman - Female
        Column(
          children: [
            Image.asset("assets/Images/Imagefemale.png", height: 100),
            Text("Female"),
          ],
        )
      ],
    );
  }
}