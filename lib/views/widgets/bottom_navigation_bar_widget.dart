import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sakak/views/screens/home_screen.dart';
import 'package:sakak/views/screens/magazine_screen.dart';
import 'package:sakak/views/screens/my_page_screen.dart';
import 'package:sakak/views/screens/store_screen.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final Widget child;

  const BottomNavigationBarWidget({super.key, required this.child});

  int getIndex(BuildContext context) {
    if (GoRouter.of(context).routeInformationProvider.value.uri.toString() ==
        HomeScreen.routeUrl) {
      return 0;
    } else if (GoRouter.of(context)
            .routeInformationProvider
            .value
            .uri
            .toString() ==
        StoreScreen.routeUrl) {
      return 1;
    } else if (GoRouter.of(context)
            .routeInformationProvider
            .value
            .uri
            .toString() ==
        MagazineScreen.routeUrl) {
      return 2;
    } else {
      return 3;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: getIndex(context),
          onTap: (index) {
            if (index == 0) {
              context.goNamed(HomeScreen.routeName);
            } else if (index == 1) {
              context.goNamed(StoreScreen.routeName);
            } else if (index == 2) {
              context.goNamed(MagazineScreen.routeName);
            } else if (index == 3) {
              context.goNamed(MyPageScreen.routeName);
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'home',
                activeIcon: Icon(Icons.home)),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_mall_outlined),
                label: 'store',
                activeIcon: Icon(Icons.local_mall_rounded)),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_outlined),
                label: 'magazine',
                activeIcon: Icon(Icons.book_rounded)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded),
                label: 'my',
                activeIcon: Icon(Icons.person_rounded)),
          ]),
    );
  }
}
