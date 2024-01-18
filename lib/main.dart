import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'page/home_page.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  runApp(const ArsenalApp());
}

class ArsenalApp extends StatelessWidget {
  const ArsenalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arsenal Football Club',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
      //    routes: {
      //   '/intro-page': (context) => const IntroPage(),
      //   '/menu-page': (context) => const MenuPage(),
      // },
    );
  }
}
