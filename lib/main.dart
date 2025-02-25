import 'package:flutter/material.dart';
import 'package:watsapp_clone_ui/home_screen.dart';
import 'package:watsapp_clone_ui/screens/chat_page.dart';
import 'package:watsapp_clone_ui/screens/settings_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Color(0xFF075E55),
          ),
          scaffoldBackgroundColor: Colors.white),
      initialRoute: 'a',
      routes: {
        'a': (context) => HomeScreen(),
        'b': (context) => SettingsPage(),
        'c': (context) => ChatPage(),
      },
    );
  }
}
