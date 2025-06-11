import 'package:flutter/cupertino.dart';
import 'package:imc_calculator/core/apps_textStyles.dart';

class ImcResult extends StatelessWidget {
  final double height;
  final int age;
  const ImcResult({super.key, required this.age, required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(age.toString(), style: TextStyles.bodytext,),
        Text(height.toString(), style: TextStyles.bodytext,),
        Spacer()
      ],
    );
  }
}