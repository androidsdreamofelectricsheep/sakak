import 'package:flutter/material.dart';
import 'package:sakak/views/layout/base_layout.dart';

class MyPageScreen extends StatelessWidget {
  static const routeUrl = '/mypage';
  static const routeName = 'mypage';

  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseLayout(
        showFloatingActionButton: false,
        appBarTitle: '마이페이지',
        isAppbarIconNeeded: true,
        child: Center(
          child: Text('my page'),
        ));
  }
}
