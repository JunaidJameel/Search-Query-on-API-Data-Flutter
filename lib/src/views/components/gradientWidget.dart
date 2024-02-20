import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  final Widget child;
  const GradientWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 96, 68, 68),
            Color.fromARGB(255, 19, 20, 35),
          ],
          stops: [0.0, 0.7],
        ),
      ),
      child: child,
    );
  }
}
