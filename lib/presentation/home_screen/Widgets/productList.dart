import 'package:digify/presentation/home_screen/Widgets/ProductContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildProductList() => SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Best seller",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                    itemCount: 5,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 12),
                    itemBuilder: (context, index) {
                      return Productcontainer();
                    },
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          );