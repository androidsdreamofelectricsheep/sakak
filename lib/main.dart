import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sakak/firebase_options.dart';
import 'package:sakak/route/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
        title: 'Sakak',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const Sakak(),
      ),
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
          colorSchemeSeed: Colors.blueGrey.shade50,
          appBarTheme: const AppBarTheme(
            foregroundColor: Colors.black,
            backgroundColor: Colors.black12,
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
