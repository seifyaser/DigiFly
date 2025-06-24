import 'package:flutter/material.dart';

Widget buildBanner() {
  return SliverToBoxAdapter(
    child: SizedBox(
      height: 175, 
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/bannerimage.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/bannerimage.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    ),

  );
}