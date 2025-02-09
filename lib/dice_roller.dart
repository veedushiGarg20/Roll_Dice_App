import 'dart:math';
import 'package:flutter/material.dart';
  
final randomiser = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomiser.nextInt(6) + 1;
    });
    print('changing image');
  }

  @override
  build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                  fontSize: 28,
                ),
              ),
              child: Text('Roll Dice'),
            )
          ],
        );
  }
}