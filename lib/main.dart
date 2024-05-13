import 'package:flutter/material.dart';
import 'package:sakak/route/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sakak',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Sakak(),
    );
  }
}

class Sakak extends StatefulWidget {
  const Sakak({super.key});

  @override
  State<Sakak> createState() => _SakakState();
}

class _SakakState extends State<Sakak> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.black,
              // fontSize: Sizes.size16 + Sizes.size2,
              fontWeight: FontWeight.w600,
            ),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              elevation: 0,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.black)),
      debugShowCheckedModeBanner: false,
      title: 'Sakak',
      routerConfig: router,
    );
  }
}
