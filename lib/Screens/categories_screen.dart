import 'package:flutter/material.dart';
import '../dummy_data.dart';

import '../Widget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DeliMeals'),
        ),
        body: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: DUMMY_CATEGORIES.map((catData) {
            return CategoryItem(catData.id,catData.title, catData.color);
          }).toList(),
        )
    );
  }
}
