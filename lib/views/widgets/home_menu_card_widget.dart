import 'package:flutter/material.dart';

class HomeMenuCardWidget extends StatelessWidget {
  final String menu;
  final IconData icon;
  const HomeMenuCardWidget({super.key, required this.menu, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade50,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(menu),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(icon),
            )
          ],
        ),
      ),
    );
  }
}
