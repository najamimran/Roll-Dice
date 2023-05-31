import 'dart:math';
import 'package:flutter/material.dart';
final randomizer =Random();
class RollDice extends StatefulWidget {
  const RollDice({Key? key}) : super(key: key);
  @override
  State<RollDice> createState() => _RollDiceState();
}
class _RollDiceState extends State<RollDice> {
  var activeIndex = 2;
  void rollDice() {
    setState(() {
      activeIndex = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$activeIndex.png",
          height: height * 0.2,
        ),
        TextButton(
            onPressed: () {
              rollDice();
            },
            child: Text(
              "Roll Dice",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: height * 0.018),
            ))
      ],
    );
  }
}
