import 'package:flutter/material.dart';
import 'package:vsr_application/ui/vsr_ui_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vive Sin Rickettsia',
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => const HomeElements(),
      ),
    );
  }
}
