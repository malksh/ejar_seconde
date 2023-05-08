import 'package:ejar_1/screens/homeScreen.dart';
import 'package:ejar_1/screens/login.dart';
import 'package:ejar_1/widgets/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
    // name: "aa-store",
    options: const FirebaseOptions(
        apiKey: 'AIzaSyAZHzgJv86oMdbo2tgfP-dWJ5cXTAjsE3A',
        appId: '1:142901758861:android:b50042874ad5347106cbc4',
        messagingSenderId: '142901758861',
        projectId: 'ejar-3ea2a'),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return  MaterialApp(
      home: 
      Splash(),
    );
  }
}
