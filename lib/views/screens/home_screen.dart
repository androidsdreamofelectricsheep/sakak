import 'package:flutter/material.dart';
import 'package:sakak/views/layout/base_layout.dart';

class HomeScreen extends StatelessWidget {
  static const routeUrl = '/';
  static const routeName = 'home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseLayout(
        appBarTitle: '홈',
        isAppbarIconNeeded: true,
        child: Center(
          child: Text('Home'),
        ));
  }
}
