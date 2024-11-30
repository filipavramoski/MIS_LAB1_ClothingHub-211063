import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/details.dart';

void main() {
  runApp(const ClothesShopApp());
}

class ClothesShopApp extends StatelessWidget {
  const ClothesShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothing Hub-211063',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/details": (context) => const Details(),
      },
    );
  }
}
