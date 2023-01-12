import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'about_screen.dart';
import 'bible_screen.dart';
import 'copyright_screen.dart';
import 'feedback_screen.dart';
import 'goals_screen.dart';
import 'help_screen.dart';
import 'home_screen.dart';
import 'privacy_screen.dart';
import 'stats_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp firebaseApp = await Firebase.initializeApp();
  runApp(const MyApp());
}

final ThemeData theme = ThemeData();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Readings',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/bible': (context) => const BibleScreen(),
        '/stats': (context) => const StatsScreen(),
        '/goals': (context) => const GoalsScreen(),
        '/about': (context) => const AboutScreen(),
        '/feedback': (context) => const FeedbackScreen(),
        '/copyright': (context) => const CopyrightScreen(),
        '/privacy': (context) => const PrivacyScreen(),
        '/help': (context) => const HelpScreen(),
      },
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: const Color(0xff477bab),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
