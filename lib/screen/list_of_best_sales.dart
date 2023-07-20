import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../models/product.dart';

class ListBestSales extends StatelessWidget {
  const ListBestSales({super.key});

  @override
  Widget build(BuildContext context) {
    List<ListOfProducts> cat = listOfProducts.map((e) => ListOfProducts.fromMap(e)).toList();

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 25.0),
          height: 50.0,
          width: double.infinity,
          child: OutlinedButton(
              onPressed: (() {}), child: const Text('تسوق المزيد من الماركات')),
        ),
        SizedBox(
          height: 400,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cat.length,
              itemBuilder: (context, i) {
                // ندخلها بالبلدر علشان اللوب
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10.0, top: 25.0),
                      //color: Colors.greenAccent,
                      width: 200,
                      height: 300,
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(cat[i].imgUrl), fit: BoxFit.cover),
                      ),
                      child: const Padding (padding: EdgeInsets.only(top: 5.0,left: 5.0), child: Icon(Icons.favorite_border_rounded)),
                    ),
                    Text(cat[i].name),
                    Text(cat[i].price),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
