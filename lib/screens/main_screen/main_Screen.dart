import 'package:flutter/material.dart';
import 'package:roll_dice/widgets/gradient_Container.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GradientContainer(),
    );
  }
}
