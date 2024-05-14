import 'package:flutter/material.dart';
import 'package:sakak/views/layout/base_layout.dart';

class StoreScreen extends StatelessWidget {
  static const routeUrl = '/store';
  static const routeName = 'store';

  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseLayout(
        showFloatingActionButton: false,
        appBarTitle: '스토어',
        isAppbarIconNeeded: true,
        child: Center(
          child: Text('store'),
        ));
  }
}
