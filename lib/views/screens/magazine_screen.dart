import 'package:flutter/material.dart';
import 'package:sakak/views/layout/base_layout.dart';

class MagazineScreen extends StatelessWidget {
  static const routeUrl = '/magazine';
  static const routeName = 'magazine';

  const MagazineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseLayout(
        showFloatingActionButton: false,
        appBarTitle: '매거진',
        isAppbarIconNeeded: false,
        child: Center(
          child: Text('magazine'),
        ));
  }
}
