import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Luxury Collection',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212), // Deep luxury black
        primaryColor: const Color(0xFFD4AF37), // Metallic Gold
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD4AF37),
          brightness: Brightness.dark,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1A1A1A),
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Color(0xFFD4AF37),
            fontSize: 22,
            fontWeight: FontWeight.w300,
            letterSpacing: 2,
          ),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LUXURY COLLECTION'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.diamond_outlined,
              size: 80,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to your Lifestyle',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w300,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Cars • Wardrobe • Watches',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
