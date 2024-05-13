import 'package:go_router/go_router.dart';
import 'package:sakak/views/screens/home_screen.dart';
import 'package:sakak/views/screens/magazine_screen.dart';
import 'package:sakak/views/screens/my_page_screen.dart';
import 'package:sakak/views/screens/store_screen.dart';
import 'package:sakak/views/widgets/bottom_navigation_bar_widget.dart';

final router = GoRouter(initialLocation: '/', routes: [
  ShellRoute(
      builder: (context, state, child) {
        return BottomNavigationBarWidget(
          child: child,
        );
      },
      routes: [
        GoRoute(
            name: HomeScreen.routeName,
            path: HomeScreen.routeUrl,
            builder: (_, state) => const HomeScreen()),
        GoRoute(
            name: StoreScreen.routeName,
            path: StoreScreen.routeUrl,
            builder: (_, state) => const StoreScreen()),
        GoRoute(
            name: MagazineScreen.routeName,
            path: MagazineScreen.routeUrl,
            builder: (_, state) => const MagazineScreen()),
        GoRoute(
            name: MyPageScreen.routeName,
            path: MyPageScreen.routeUrl,
            builder: (context, state) {
              return const MyPageScreen();
            }),
      ])
]);
