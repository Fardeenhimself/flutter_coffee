import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({required this.onPressed, required this.child, super.key});

  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
