import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../Theme/app_theme.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class ProductPageView extends StatefulWidget {
  const ProductPageView({super.key});

  @override
  State<ProductPageView> createState() => _ProductPageViewState();
}

class _ProductPageViewState extends State<ProductPageView> {
  String dropdownValue = list.first;

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
                  "kokoko",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                background: Image.network(
                  "https://images.pexels.com/photos/8131576/pexels-photo-8131576.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                  fit: BoxFit.cover,
                )),
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
                child: Container(
                  margin:
                      const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                  //color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
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
                      const Divider(),
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('اختر الوانك المفضلة:'),
                          Row(
                            children: [
                              Icon(
                                Icons.history,
                                size: 50.0,
                                color: Colors.black,
                              ),
                              Icon(
                                Icons.history,
                                size: 50.0,
                                color: Colors.redAccent,
                              ),
                              Icon(
                                Icons.history,
                                size: 50.0,
                                color: Colors.green,
                              ),
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
            ]), //SliverChildBuildDelegate
          ) //SliverList
        ], //<Widget>[]
      ),
    );
  }
}
