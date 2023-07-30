import 'package:flutter/material.dart';
import 'package:test_logic/screen/product_by_category.dart';
import 'package:test_logic/screen/product_page.dart';

import '../dummy_data.dart';
import '../models/product.dart';

class ListBestSales extends StatelessWidget {
  const ListBestSales({super.key});

  @override
  Widget build(BuildContext context) {
    List<ListOfProducts> products =
        product.map((e) => ListOfProducts.fromMap(e)).toList();

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 25.0),
          height: 50.0,
          width: double.infinity,
          child: OutlinedButton(
              onPressed: (() {
                // TODO HERE FOR TESTING.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductByCategory()),
                );
              }),
              child: const Text('تسوق المزيد من الماركات')),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: SizedBox(
              width: double.infinity,
              child: Text(
                'تشكيلة جديدة من النظارات الفاخرة',
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.end,
              )),
        ),
        SizedBox(
          height: 380,
          child: ListView.builder(
            shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, i) {
                // ندخلها بالبلدر علشان اللوب
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //TODO  CHANGE THIS LATER NAVIGATOR LOCATION // DEMO NOW
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductPageView()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        //color: Colors.greenAccent,
                        width: 200,
                        height: 300,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                        image: DecorationImage(
                              image: NetworkImage(products[i].images[0]),
                              fit: BoxFit.cover),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.only(top: 5.0, left: 5.0),
                            child: Icon(Icons.favorite_border_rounded)),
                      ),
                    ),
                    Text(
                      products[i].name,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Text(products[i].price),
                  ],
                );
              }),
        ),
        const Divider(),
        Container(
          height: 200,
          width: double.infinity,
          alignment: Alignment.center,
          //color: Colors.red,
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://images.pexels.com/photos/7778883/pexels-photo-7778883.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            ),
          )),
          child: Text(
            'SALES DECEMBER 2023',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ],
    );
  }
}
