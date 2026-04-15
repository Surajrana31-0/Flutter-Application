//screen: hot reload
import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My First Flutter App"),
        ),
      body: Text("Hello World"),
    );
  }
}