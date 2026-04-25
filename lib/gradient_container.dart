import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  const GradientContainer({
    super.key,
    required this.color1,
    required this.color2,
    required this.color3,
  });
  
  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 300,
            ),
            TextButton(
              onPressed: rollDice,
              child: Text("Roll Dice"),
            ),
          ],
        ),
      ),
    );
  }
}
