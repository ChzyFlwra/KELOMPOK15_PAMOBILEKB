import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kel15pa/utils/theme_provider.dart';
import 'package:kel15pa/screens/auth/login.dart';
import 'package:kel15pa/screens/auth/register.dart';
import 'package:kel15pa/screens/forum/forum_screen.dart';
import 'package:kel15pa/screens/home/home.dart';
import 'package:kel15pa/utils/theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Klasifikasi Sampah',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/forum': (context) => const ForumScreen(),
      },
    );
  }
}
