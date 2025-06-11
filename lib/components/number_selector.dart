import 'package:flutter/material.dart';
import 'package:imc_calculator/core/apps_colors.dart';
import 'package:imc_calculator/core/apps_textStyles.dart';

class NumberSelector extends StatefulWidget {
  final String titulo;
  final Function() onIncrement;
  final int value;
  final Function() onDecrement;
  const NumberSelector(
      {super.key,
      required this.titulo,
      required this.value,
      required this.onIncrement,
      required this.onDecrement});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundComponent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(widget.titulo, style: TextStyles.bodytext),
            Text(
              widget.value.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      widget.onDecrement();
                    },
                    shape: CircleBorder(),
                    backgroundColor: AppColors.primary,
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      widget.onIncrement();
                    },
                    shape: CircleBorder(),
                    backgroundColor: AppColors.primary,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),   
    );
  }
}
