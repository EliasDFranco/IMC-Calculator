import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreentState();
}

class _ImcHomeScreentState extends State<ImcHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(),
        NumberSelector()
      ],
    );
  }
}
