import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/screens/details/details.dart';
import 'package:stylish/screens/home/components/product_card.dart';
import 'package:stylish/screens/home/components/section_title.dart';

class NewArrivelProducts extends StatelessWidget {
  const NewArrivelProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'New Arrivel',
          press: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
              (index) => ProductCard(
                title: demo_product[index].title,
                image: demo_product[index].image,
                price: demo_product[index].price,
                imagebackColor:
                    index == 1 ? bgColor : demo_product[index].bgColor,
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetials(
                      product: demo_product[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
