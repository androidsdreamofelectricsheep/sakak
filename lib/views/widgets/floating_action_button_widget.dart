import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final void Function() onPressed;

  const FloatingActionButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.blueGrey.shade100,
        child: const Icon(Icons.email_rounded));
  }
}
