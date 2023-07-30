import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('حسابي ')),
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

        const Text('مرحبا بك .. حسين', textAlign: TextAlign.center,),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(bottom: BorderSide(color: Colors.black12)),
          ),
          child:  ListTile(
            title: Text('adress comes here for example', style: Theme.of(context).textTheme.bodyMedium,),
            leading: const Icon(Icons.card_giftcard),
            trailing: const Icon(Icons.menu),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(bottom: BorderSide(color: Colors.black12)),
          ),
          child:  ListTile(
            title: Text('Hello', style: Theme.of(context).textTheme.bodyMedium,),
            leading: const Icon(Icons.card_giftcard),
            trailing: const Icon(Icons.menu),
          ),
        ),

      ]),
    );
  }
}
