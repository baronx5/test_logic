import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('السوق العربي')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
        Container(
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black12),
          ),
          child: const Icon(
            Icons.person,
            size: 100.0,
          ),
        ),

        const Text('Welcome Name', textAlign: TextAlign.center,)
      ]),
    );
  }
}
