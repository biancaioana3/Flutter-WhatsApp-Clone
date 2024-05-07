import 'package:flutter/material.dart';
import 'package:whatsapp/responsive/responsive_layout.dart';
import 'package:whatsapp/screens/mobile_screen_layout.dart';
import 'package:whatsapp/screens/web_screen_layout.dart';
import 'package:whatsapp/theme/dark_theme.dart';
import 'package:whatsapp/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Me',
      theme: lightTheme(context),
      darkTheme: darkTheme(),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
