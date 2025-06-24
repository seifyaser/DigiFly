import 'package:digify/presentation/home_screen/Widgets/ProductContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildProductList(BuildContext context) {
  final List<Map<String, dynamic>> products = [
    {"name": "Box A", "price": 1222.99, "image": "assets/images/box10.svg", "category": "Category A", "discount": "-17%"},
    {"name": "Box B", "price": 1555.99, "image": "assets/images/box11.svg", "category": "Category B", "discount": "-10%"},
    {"name": "Box C", "price": 1000, "image": "assets/images/box12.svg", "category": "Category C", "discount": "-15%"},
    {"name": "Box D", "price": 34.99, "image": "assets/images/box13.svg", "category": "Category D", "discount": "-20%"},
    {"name": "Box E", "price": 39.99, "image": "assets/images/box14.svg", "category": "Category E", "discount": "-25%"},
  ];

  final List<Map<String, dynamic>> productsarabic = [
    {"name": "الصندوق أ", "price": 1222.99, "image": "assets/images/box10.svg", "category": "الفئة أ", "discount": "-17%"},
    {"name": "الصندوق ب", "price": 1555.99, "image": "assets/images/box11.svg", "category": "الفئة ب", "discount": "-10%"},
    {"name": "الصندوق ج", "price": 1000, "image": "assets/images/box12.svg", "category": "الفئة ج", "discount": "-15%"},
    {"name": "الصندوق د", "price": 34.99, "image": "assets/images/box13.svg", "category": "الفئة د", "discount": "-20%"},
    {"name": "الصندوق هـ", "price": 39.99, "image": "assets/images/box14.svg", "category": "الفئة هـ", "discount": "-25%"},
  ];

  bool isArabic = Localizations.localeOf(context).languageCode == 'ar';
  final displayProducts = isArabic ? productsarabic : products;

  return SliverToBoxAdapter(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(isArabic ? "الأكثر مبيعًا" : "Best seller",
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(isArabic ? "عرض الكل >" : "View all >",
                  style: const TextStyle(color: Colors.green)),
            ],
          ),
        ),
        SizedBox(
          height: 320,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: displayProducts.length,
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final item = displayProducts[index];
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
