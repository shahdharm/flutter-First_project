import 'package:flutter/material.dart';

void main() {
  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LearnMenia',
      initialRoute: '/',
      routes: {
        '/': (context) => const arithematicScreen(),
        '/siscreen': (context) => const simpleinterest(),
      });
}
