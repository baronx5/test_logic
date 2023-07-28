import 'package:flutter/material.dart';
import 'package:test_logic/screen/list_of_best_sales.dart';
import 'package:test_logic/screen/welcome_msg.dart';
import 'screen/menu.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'السوق العربي',
          ),
          leading: const Icon(Icons.shopping_bag_outlined),
        ),
        body: ListView(
          padding: const EdgeInsets.only(left:10.0, right: 10.0),
          scrollDirection: Axis.vertical,
          children: const [
            WelcomeMsg(),
            HomeMenu(),
            ListBestSales(),
          ],
        ),
      );
  }
}