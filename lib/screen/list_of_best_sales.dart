import 'package:flutter/material.dart';

class ListBestSales extends StatelessWidget {
  const ListBestSales({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10.0, top: 25.0),
            //color: Colors.greenAccent,
            width: 160,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/8128069/pexels-photo-8128069.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                  fit: BoxFit.cover),
            ),
            child: const Text('fdf'),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0, top: 25.0),
            color: Colors.greenAccent,
            width: 160,
            child: const Text('dfd'),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0, top: 25.0),
            color: Colors.greenAccent,
            width: 160,
            child: const Text('dfd'),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0, top: 25.0),
            color: Colors.greenAccent,
            width: 160,
            child: const Text('dfd'),
          ),
        ],
      ),
    );
  }
}
