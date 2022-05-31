
import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Category.dart';
import 'package:stylish/screens/home/components/category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      child: ListView.separated(
        itemCount: demo_categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryCard(
          icon: demo_categories[index].icon,
          title: demo_categories[index].title,
          preess: () {},
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: defaultPadding,
        ),
      ),
    );
  }
}
