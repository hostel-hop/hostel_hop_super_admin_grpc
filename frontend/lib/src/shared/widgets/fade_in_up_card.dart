import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FadeInUpCard extends StatelessWidget {
  const FadeInUpCard({
    super.key,
    required this.child,
    this.showBorder = false,
    this.padding,
    this.elevation = 0,
  });
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final bool showBorder;
  final int elevation;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 500),
      delay: const Duration(milliseconds: 100),
      child: Card(
        elevation: elevation.toDouble(),
        shape: RoundedRectangleBorder(
          side: showBorder ? const BorderSide(width: 1) : BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.white,
        child: Padding(
          padding: padding ??
              const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: child,
        ),
      ),
    );
  }
}
