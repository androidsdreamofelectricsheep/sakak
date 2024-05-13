import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  final Widget child;
  final String appBarTitle;
  final bool isAppbarIconNeeded;

  const BaseLayout(
      {super.key,
      required this.appBarTitle,
      required this.child,
      required this.isAppbarIconNeeded});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
          actions: [
            isAppbarIconNeeded
                ? IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_rounded))
                : const SizedBox.shrink()
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: child,
          ),
        ));
  }
}
