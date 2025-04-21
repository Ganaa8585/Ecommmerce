import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:traffic/Pages/UserHomeScreen.dart';
import 'package:traffic/Pages/BottomNavigationBarChange.dart';
import 'package:traffic/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Test',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const BottomNavigationBarChange(), // Footer color энд SharedPreferences-оос уншигдана
    );
  }
}

