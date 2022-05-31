import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
    this.imagebackColor = Colors.white,
  }) : super(key: key);

  final String image;
  final String title;
  final int price;
  final VoidCallback press;
  final Color imagebackColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: imagebackColor,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(image),
              height: 152,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Text(
                      title,
                      style: Theme.of(context).textTheme.bodyText2,
                    )),
                    const SizedBox(width: defaultPadding),
                    Text(
                      '\$' + price.toString(),
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
