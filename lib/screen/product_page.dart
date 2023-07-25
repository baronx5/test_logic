import 'package:flutter/material.dart';
import '../Theme/app_theme.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

Map<String, dynamic> productQuery = {
  'product_id': '1',
  'name': 'Product name here',
  'description': 'Natural apple juice',
  'price': '1',
  'images': [
    'https://images.unsplash.com/photo-1611930021559-4a5cb5c38da3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=900&q=60',
    'https://images.unsplash.com/photo-1611930021592-a8cfd5319ceb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=900&q=60',
    'https://images.unsplash.com/photo-1611930021698-a55ec4d5fe6e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=900&q=60',
    'https://images.unsplash.com/photo-1611930021698-a55ec4d5fe6e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=900&q=60',
  ]
};

class ProductPageView extends StatefulWidget {
  const ProductPageView({super.key});

  @override
  State<ProductPageView> createState() => _ProductPageViewState();
}

class _ProductPageViewState extends State<ProductPageView> {
  String dropdownValue = list.first;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: false,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  productQuery['name'],
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                background: buildImageSlider()),
            expandedHeight: 430,
            backgroundColor: AppTheme.colors.color0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              tooltip: 'back',
              onPressed: () {
                Navigator.pop(context);
              },
            ), //IconButton
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.favorite_border_outlined),
                tooltip: 'add favorite',
                onPressed: () {},
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                  //color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                          shrinkWrap: true,
                          reverse: true,
                          itemCount: productQuery['images'].length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                _pageController.animateToPage(
                                  index,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.only(left: 10.0),
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    colorFilter: _currentPage == index? ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.dstATop): ColorFilter.mode(Colors.white.withOpacity(0), BlendMode.dstATop),
                                      image: NetworkImage(
                                          productQuery['images'][index]),
                                      fit: BoxFit.cover),
                                      
                                  border: Border.all(
                                    color: _currentPage == index
                                        ? AppTheme.colors.color4
                                        : Colors.grey,
                                    width: 1,
                                  
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            );
                          },
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'اسم المنتج هنا',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            '12.80 KWD',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                      const Text(
                          'التركيبة العطرية: توت العليق، كريستالات العنبر، بتلات الورد المخملية، الباتشولي الكريمي، ومسك الموكا.'),
                      const Divider(),
                      const Text('اختر المقاس'),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                              color: AppTheme.colors.color4,
                              style: BorderStyle.solid,
                              width: 0.80),
                        ),
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          underline: const SizedBox(),
                          style: TextStyle(color: AppTheme.colors.color4),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('اختر الوانك المفضلة:'),
                          Row(
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(15),
                                      elevation: 0.0,
                                      backgroundColor: Colors.amber),
                                  onPressed: () {},
                                  child: const Text('one')),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(15),
                                      elevation: 0.0,
                                      backgroundColor: Colors.blueAccent),
                                  onPressed: () {},
                                  child: const Text('one')),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(15),
                                      elevation: 0.0,
                                      backgroundColor: Colors.purpleAccent),
                                  onPressed: () {},
                                  child: const Text('three')),
                            ],
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: 50.0,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text('ORDER NOW')),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }

  Widget buildImageSlider() {
    return PageView.builder(
      controller: _pageController,
      itemCount: productQuery['images'].length,
      itemBuilder: (context, index) {
        return Image.network(
          productQuery['images'][index],
          fit: BoxFit.cover,
        );
      },
      onPageChanged: (index) {
        setState(() {
          _currentPage = index;
        });
      },
    );
  }
}
