import 'package:flutter/material.dart';
import 'dummy_data.dart';
import 'models/category.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    List<Category> cat = mylist.map((e) => Category.fromMap(e)).toList();
    // List<Category> items = mylist.map((e) => Category.fromMap(e)).toList();
    // // print(items.length);
    return SizedBox(
      height: 230,
      width: 10,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cat.length, // نحدد العدد للايتم بلدر
        itemBuilder: (context, i) {
          // ندخلها بالبلدر علشان اللوب
          return Container(
            margin: const EdgeInsets.only(top: 25.0, left: 7.0),
            padding: const EdgeInsets.all(5.0),
            alignment: Alignment.center,
            width: 170,
            decoration: BoxDecoration(
                color: const Color(0xff000000),
                shape: BoxShape.rectangle,
                //borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    //colorFilter: ColorFilter.mode(
                      //  Colors.black.withOpacity(0.6), BlendMode.dstATop),
                    image: NetworkImage(cat[i].imgUrl.toString()),
                    fit: BoxFit.cover)),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                cat[i].name,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          );
        },
      ),
    );
  }
}
