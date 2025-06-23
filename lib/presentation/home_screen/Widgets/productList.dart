import 'package:digify/presentation/home_screen/Widgets/ProductContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildProductList() {

  final List<Map<String, dynamic>> products = [
    {"name": "Box A", "price": 1222.99, "image": "assets/images/box10.svg", "category": "Category A", "discount": "-17%"},
    {"name": "Box B", "price": 1555.99, "image": "assets/images/box11.svg", "category": "Category B", "discount": "-10%"},
    {"name": "Box C", "price": 1000, "image": "assets/images/box12.svg", "category": "Category C", "discount": "-15%"},
    {"name": "Box D", "price": 34.99, "image": "assets/images/box13.svg", "category": "Category D", "discount": "-20%"},
    {"name": "Box E", "price": 39.99, "image": "assets/images/box14.svg", "category": "Category E", "discount": "-25%"},
  ];

  return SliverToBoxAdapter(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Best seller",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "View all >",
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 320,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: products.length,
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final item = products[index];
              return Productcontainer(
                name: item["name"],
                category: item["category"],
                price: (item["price"] as num).toDouble(),
                imagePath: item["image"],
                discount: item["discount"],
              );
            },
          ),
        ),
        const SizedBox(height: 16),
      ],
    ),
  );
}
