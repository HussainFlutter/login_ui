import 'package:flutter/material.dart';

import 'login.dart';

String imageUrl =
    "https://images.unsplash.com/photo-1554469384-e58fac16e23a?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: SafeArea(child: LoginScreen()),
    );
  }
}
