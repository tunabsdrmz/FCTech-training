import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/user_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(123, 63, 211, 1.0),
          centerTitle: true,
          title: const Text('USERS',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: Colors.white)),
        ),
        body: const Column(
          children: [CustomAppBar(), Cards()],
        ));
  }
}
