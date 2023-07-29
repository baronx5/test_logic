import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final String imgurl;

  Product({required this.name, required this.price, required this.imgurl});
}

class ProductByCategory extends StatefulWidget {
  const ProductByCategory({super.key});

  @override
  State<ProductByCategory> createState() => _ProductByCategoryState();
}

class _ProductByCategoryState extends State<ProductByCategory> {
  final List<Product> products = [
    Product(
        name: "Product 1",
        price: 10.99,
        imgurl:
            "https://images.pexels.com/photos/9595069/pexels-photo-9595069.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
    Product(
        name: "Product 2",
        price: 15.49,
        imgurl:
            "https://images.pexels.com/photos/6621472/pexels-photo-6621472.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
    Product(
        name: "Product 3",
        price: 24.99,
        imgurl:
            "https://images.pexels.com/photos/4465126/pexels-photo-4465126.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
    Product(
        name: "Product 4",
        price: 7.95,
        imgurl:
            "https://images.pexels.com/photos/9595069/pexels-photo-9595069.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
    Product(
        name: "Product 5",
        price: 12.50,
        imgurl:
            "https://images.pexels.com/photos/9595069/pexels-photo-9595069.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
    Product(
        name: "Product 6",
        price: 19.75,
        imgurl:
            "https://images.pexels.com/photos/9595069/pexels-photo-9595069.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
  ];

  bool isAscending = true;

  @override
  Widget build(BuildContext context) {
    products.sort((a, b) =>
        isAscending ? a.price.compareTo(b.price) : b.price.compareTo(a.price));

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'السوق العربي',
        ),
        leading: const Icon(Icons.shopping_bag_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          children: [
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    isAscending = !isAscending;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(isAscending
                        ? Icons.arrow_upward
                        : Icons.arrow_downward),
                    const Text('عرض حسب السعر'),
                  ],
                )),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      2, // You can adjust the number of columns here
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                  childAspectRatio: 0.6,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return buildProductCard(product);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildProductCard(Product product) {
  return Card(
    elevation: 0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Image.network(product.imgurl, fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            product.name,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "\$${product.price.toStringAsFixed(2)}",
            style:
                const TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
          ),
        ),
      ],
    ),
  );
}
